module Types
  class CountryType < Types::BaseObject
    field :nct_id, String, null: false
    field :name, String, null: true
    field :removed, Boolean, null: true
    field :study, Types::StudyType, null: true
  end
end
