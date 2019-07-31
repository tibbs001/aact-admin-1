module Types
  class ResultGroupType < Types::BaseObject
    field :nct_id,            String, null: true
    field :ctgov_group_code,  String, null: true
    field :result_type,       String, null: true
    field :title,             String, null: true
    field :description,       String, null: true
    field :drop_withdrawals,  [Types::DropWithdrawalType], null: true
    field :baseline_counts,   [Types::BaselineCountType], null: true
    field :milestones,        [Types::MilestoneType], null: true
    field :reported_events,   [Types::ReportedEventType], null: true
    field :study,             Types::StudyType, null: true
  end
end
