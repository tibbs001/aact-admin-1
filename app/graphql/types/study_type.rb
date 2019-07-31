module Types
  class StudyType < Types::BaseObject
    description "A clinical trial."

    field :nct_id,                           String, null: true
    field :acronym,                          String, null: true

    field :last_update_submitted_date,       Types::BaseScalar, null: true
    field :last_update_submitted_qc_date,    Types::BaseScalar, null: true
    field :results_first_submitted_date,     Types::BaseScalar, null: true
    field :results_first_submitted_qc_date,  Types::BaseScalar, null: true
    field :results_first_posted_date,        Types::BaseScalar, null: true
    field :results_first_posted_date_type,   String, null: true
    field :verification_date,                Types::BaseScalar, null: true
    field :start_date,                       Types::BaseScalar, null: true
    field :start_date_type,                  String, null: true
    field :study_first_posted_date,          Types::BaseScalar, null: true
    field :study_first_posted_date_type,     String, null: true
    field :disposition_first_submitted_date, Types::BaseScalar, null: true
    field :disposition_first_submitted_qc_date, Types::BaseScalar, null: true
    field :disposition_first_posted_date,    Types::BaseScalar, null: true
    field :disposition_first_posted_date_type, String, null: true
    field :study_first_submitted_qc_date,    Types::BaseScalar, null: true
    field :primary_completion_date,          Types::BaseScalar, null: true
    field :primary_completion_date_type,     String, null: true
    field :completion_date,                  Types::BaseScalar, null: true
    field :completion_date_type,             String, null: true
    field :last_update_posted_date,          Types::BaseScalar, null: true
    field :last_update_posted_date_type,     String, null: true
    field :baseline_population,              String, null: true
    field :enrollment,                       String, null: true
    field :enrollment_type,                  String, null: true
    field :target_duration,                  String, null: true
    field :number_of_arms,                   String, null: true
    field :number_of_groups,                 String, null: true
    field :study_type,                       String, null: true
    field :overall_status,                   String, null: true
    field :last_known_status,                String, null: true
    field :brief_title,                      String, null: true
    field :official_title,                   String, null: true
    field :phase,                            String, null: true
    field :start_date_type,                  String, null: true
    field :why_stopped,                      String, null: true
    field :limitations_and_caveats,          String, null: true
    field :source,                           String, null: true
    field :baseline_counts,                  [Types::BaselineCountType], null: true
    field :conditions,                       [Types::ConditionType], null: true
    field :countries,                        [Types::CountryType], null: true
    field :designs,                          [Types::DesignType], null: true
    field :design_outcomes,                  [Types::DesignOutcomeType], null: true
    field :facilities,                       [Types::FacilityType], null: true
    field :interventions,                    [Types::InterventionType], null: true
    field :milestones,                       [Types::MilestoneType], null: true
    field :outcomes,                         [Types::OutcomeType], null: true
    field :reported_events,                  [Types::ReportedEventType], null: true
    field :result_groups,                    [Types::ResultGroupType], null: true
    field :sponsors,                         [Types::SponsorType], null: true
    field :study_reference_types,            [Types::StudyReferenceType], null: true
    field :has_dmc,                          Boolean, null: true
    field :is_fda_regulated_drug,            Boolean, null: true
    field :is_fda_regulated_device,          Boolean, null: true
    field :has_expanded_access,              Boolean, null: true
    field :expanded_access_type_intermediate, Boolean, null: true
    field :expanded_access_type_individual,  Boolean, null: true
    field :expanded_access_type_treatment,   Boolean, null: true
  end
end
