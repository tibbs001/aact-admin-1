require 'search_object/plugin/graphql'

class Resolvers::FacilitySearch
  # include SearchObject for GraphQL
  include SearchObject.module(:graphql)

  # scope is starting point for search
  scope { Ctgov::Facility.all }

  type types[Types::FacilityType]

  # inline input type definition for the advance filter
  class FacilityFilter < ::Types::BaseInputObject
    argument :name, String, required: false
    argument :city, String, required: false
    argument :state, String, required: false
    argument :zip, String, required: false
    argument :country, String, required: false
    argument :OR, [self], required: false
  end

  # when "filter" is passed "apply_filter" would be called to narrow the scope
  option :filter, type: FacilityFilter, with: :apply_filter

  # apply_filter recursively loops through "OR" branches
  def apply_filter(scope, value)
    branches = normalize_filters(value).reduce { |a, b| a.or(b) }
    scope.merge branches
  end

  def normalize_filters(value, branches = [])
    scope = Ctgov::Facility.all
    #scope = scope.like(:brief_title, value[:title_contains]) if value[:title_contains]
    scope = scope.where('lower(name) like ?', "%#{value[:name]}%") if value[:name]
    scope = scope.where('lower(city) like ?', "%#{value[:city]}%") if value[:city]
    scope = scope.where('lower(state) like ?', "%#{value[:state]}%") if value[:state]
    scope = scope.where('lower(zip) like ?', "%#{value[:zip]}%") if value[:zip]
    scope = scope.where('lower(country) like ?', "%#{value[:country]}%") if value[:country]

    branches << scope

    value['OR'].reduce(branches) { |s, v| normalize_filters(v, s) } if value['OR'].present?

    branches
  end
end
