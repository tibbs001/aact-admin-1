module Types
  class MilestoneType < Types::BaseObject
    field :nct_id, String, null: false
    field :title, String, null: true
    field :period, String, null: true
    field :description, String, null: true
    field :count, String, null: true
    field :study, Types::StudyType, null: true
  end
end
