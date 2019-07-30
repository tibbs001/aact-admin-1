require 'search_object/plugin/graphql'

class Resolvers::DesignSearch
  # include SearchObject for GraphQL
  include SearchObject.module(:graphql)

  # scope is starting point for search
  scope { Ctgov::Design.all }

  type types[Types::DesignType]

  # inline input type definition for the advance filter
  class DesignFilter < ::Types::BaseInputObject
    argument :allocation, String, required: false
    argument :observational_model, String, required: false
    argument :intervention_model, String, required: false
    argument :primary_purpose, String, required: false
    argument :masking, String, required: false
  end

  # when "filter" is passed "apply_filter" would be called to narrow the scope
  option :filter, type: DesignFilter, with: :apply_filter

  # apply_filter recursively loops through "OR" branches
  def apply_filter(scope, value)
    branches = normalize_filters(value).reduce { |a, b| a.or(b) }
    scope.merge branches
  end

  def normalize_filters(value, branches = [])
    scope = Ctgov::Design.all
    scope = scope.where('lower(allocation) like ?', "%#{value[:allocation].downcase}%")                   if value[:allocation]
    scope = scope.where('lower(observational_model) like ?', "%#{value[:observational_model].downcase}%") if value[:observational_model]
    scope = scope.where('lower(intervention_model) like ?', "%#{value[:intervention_model].downcase}%")   if value[:intervention_modelstate]
    scope = scope.where('lower(primary_purpose) like ?', "%#{value[:primary_purpose].downcase}%")         if value[:primary_purpose]
    scope = scope.where('lower(masking) like ?', "%#{value[:masking].downcase}%")                         if value[:masking]

    branches << scope

    value['OR'].reduce(branches) { |s, v| normalize_filters(v, s) } if value['OR'].present?

    branches
  end
end
