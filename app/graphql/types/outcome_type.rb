module Types
  class OutcomeType < Types::BaseObject
    field :nct_id, String, null: true
    field :outcome_type, String, null: true
    field :title, String, null: true
    field :description, String, null: true
    field :time_frame, String, null: true
    field :population, String, null: true
    field :units, String, null: true
    field :units_analyzed, String, null: true
    field :dispersion_type, String, null: true
    field :param_type, String, null: true
    field :study, Types::StudyType, null: true
  end
end
