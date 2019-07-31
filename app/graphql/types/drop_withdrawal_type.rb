module Types
  class DropWithdrawalType < Types::BaseObject
    field :nct_id,           String, null: true
    field :ctgov_group_code, String, null: true
    field :period,           String, null: true
    field :reason,           String, null: true
    field :count,            String, null: true
    field :result_group,     Types::ResultGroupType, null: true
    field :study,            Types::StudyType, null: true
  end
end
