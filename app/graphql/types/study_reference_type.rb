module Types
  class StudyReferenceType < Types::BaseObject
    field :nct_id, String, null: true
    field :reference_type, String, null: true
    field :citation, String, null: true
    field :pmid, String, null: true
    field :study, Types::StudyType, null: true
  end
end
