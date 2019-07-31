module Types
  class ReportedEventType < Types::BaseObject
    field :nct_id,            String, null: true
    field :event_type,        String, null: true
    field :default_vocab,     String, null: true
    field :description,       String, null: true
    field :time_frame,        String, null: true
    field :event_count,       String, null: true
    field :subjects_affected, String, null: true
    field :subjects_at_risk,  String, null: true
    field :organ_system,      String, null: true
    field :adverse_event_term, String, null: true
    field :assessment,        String, null: true
    field :result_group,      Types::ResultGroupType, null: true
    field :study,             Types::StudyType, null: true
  end
end
