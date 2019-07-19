require 'search_object/plugin/graphql'

class Resolvers::KeywordSearch
  # include SearchObject for GraphQL
  include SearchObject.module(:graphql)

  # scope is starting point for search
  scope { Ctgov::Keyword.all }

  type types[Types::KeywordType]

  # inline input type definition for the advance filter
  class KeywordFilter < ::Types::BaseInputObject
    argument :name, String, required: false
    argument :OR, [self], required: false
  end

  # when "filter" is passed "apply_filter" would be called to narrow the scope
  option :filter, type: KeywordFilter, with: :apply_filter

  # apply_filter recursively loops through "OR" branches
  def apply_filter(scope, value)
    branches = normalize_filters(value).reduce { |a, b| a.or(b) }
    scope.merge branches
  end

  def normalize_filters(value, branches = [])
    scope = Ctgov::Keyword.all
    scope = scope.where('downcase_name like ?', "%#{value[:name].downcase}%") if value[:name]

    branches << scope

    value['OR'].reduce(branches) { |s, v| normalize_filters(v, s) } if value['OR'].present?

    branches
  end
end
