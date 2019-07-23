module Types
  class DesignOutcomeType < Types::BaseObject
    field :nct_id, String, null: true
    field :outcome_type, String, null: true
    field :measure, String, null: true
    field :description, String, null: true
    field :time_frame, String, null: true
    field :population, String, null: true
    field :study, Types::StudyType, null: true
  end
end
