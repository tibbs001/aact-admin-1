module Types
  class KeywordType < Types::BaseObject
    field :nct_id, String, null: true
    field :name, String, null: true
    field :study, Types::StudyType, null: true
  end
end
