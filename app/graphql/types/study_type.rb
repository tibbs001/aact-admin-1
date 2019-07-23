module Types
  class StudyType < Types::BaseObject
    description "A clinical trial."

    field :nct_id,                           String, null: true
    field :acronym,                          String, null: true
    field :disposition_first_submitted_date, Types::BaseScalar, null: true
    field :last_update_submitted_date,       Types::BaseScalar, null: true
    field :results_first_submitted_date,     Types::BaseScalar, null: true
    field :results_first_posted_date,        Types::BaseScalar, null: true
    field :start_date,                       Types::BaseScalar, null: true
    field :study_first_posted_date,          Types::BaseScalar, null: true
    field :study_first_submitted_qc_date,    Types::BaseScalar, null: true
    field :primary_completion_date,          Types::BaseScalar, null: true
    field :baseline_population,              String, null: true
    field :enrollment,                       String, null: true
    field :number_of_arms,                   String, null: true
    field :number_of_groups,                 String, null: true
    field :study_type,                       String, null: true
    field :overall_status,                   String, null: true
    field :brief_title,                      String, null: true
    field :phase,                            String, null: true
    field :start_date_type,                  String, null: true
    field :why_stopped,                      String, null: true
    field :conditions,                       [Types::ConditionType], null: true
    field :countries,                        [Types::CountryType], null: true
    field :design_outcomes,                  [Types::DesignOutcomeType], null: true
    field :facilities,                       [Types::FacilityType], null: true
    field :interventions,                    [Types::InterventionType], null: true
    field :milestones,                       [Types::MilestoneType], null: true
    field :outcomes,                         [Types::OutcomeType], null: true
    field :reported_events,                  [Types::ReportedEventType], null: true
    field :sponsors,                         [Types::SponsorType], null: true
    field :has_dmc,                          Boolean, null: true
    field :is_fda_regulated_drug,            Boolean, null: true
    field :is_fda_regulated_device,          Boolean, null: true
  end
end


# study_first_posted_date_type: "Estimate",
# results_first_submitted_qc_date: nil,
# results_first_posted_date_type: nil,
# disposition_first_submitted_qc_date: nil,
# disposition_first_posted_date: nil,
# disposition_first_posted_date_type: nil,
# last_update_submitted_qc_date: Thu, 23 Jun 2005,
# last_update_posted_date: Fri, 24 Jun 2005,
# last_update_posted_date_type: "Estimate",
# start_month_year: nil,
# start_date_type: nil,
# verification_month_year: "January 2004",
# verification_date: Sat, 31 Jan 2004,
# completion_month_year: nil,
# completion_date_type: nil,
# completion_date: nil,
# primary_completion_month_year: nil,
# primary_completion_date_type: nil,
# primary_completion_date: nil,
# target_duration: nil,
# official_title: nil,
# last_known_status: nil,
# enrollment_type: nil,
# source: "National Center for Research Resources (NCRR)",
# limitations_and_caveats: "",
# number_of_groups: nil,
# has_expanded_access: false,
# expanded_access_type_individual: nil,
# expanded_access_type_intermediate: nil,
# expanded_access_type_treatment: nil,
