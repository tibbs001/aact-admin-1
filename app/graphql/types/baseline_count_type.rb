
module Types
  class BaselineCountType < Types::BaseObject
    field :nct_id,                   String, null: true
    field :ctgov_group_code,         String, null: true
    field :units,                    String, null: true
    field :scope,                    String, null: true
    field :count,                    String, null: true
    field :study,                    Types::StudyType, null: true
    field :result_group,             Types::ResultGroupType, null: true
  end
end
