module Types
  class FacilityType < Types::BaseObject
    field :nct_id, String, null: true
    field :name, String, null: true
    field :city, String, null: true
    field :state, String, null: true
    field :zip, String, null: true
    field :country, String, null: true
    field :study, Types::StudyType, null: true
  end
end
