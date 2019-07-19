module Ctgov
  class StudyRelationship < Ctgov::PublicBase
    self.abstract_class = true;
    self.primary_key = 'nct_id'
    belongs_to :study, :foreign_key=> 'nct_id'
  end
end
