module Types
  class DesignType < Types::BaseObject
    field :nct_id,                   String, null: true
    field :allocation,               String, null: true
    field :intervention_model,       String, null: true
    field :observational_model,      String, null: true
    field :primary_purpose,          String, null: true
    field :time_perspective,         String, null: true
    field :masking,                  String, null: true
    field :masking_description,      String, null: true
    field :intervention_model_description, String, null: true
    field :subject_masked,           Boolean, null: true
    field :caregiver_masked,         Boolean, null: true
    field :investigator_masked,      Boolean, null: true
    field :outcomes_assessor_masked, Boolean, null: true
    field :study,                    Types::StudyType, null: true
  end
end
