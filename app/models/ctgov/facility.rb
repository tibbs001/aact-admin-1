module Ctgov
  class Facility < StudyRelationship
    has_many :studies, :foreign_key => 'nct_id'
  end
end
