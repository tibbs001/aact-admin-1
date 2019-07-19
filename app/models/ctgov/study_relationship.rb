module Ctgov
class StudyRelationship < Ctgov::PublicBase
  self.abstract_class = true;
  belongs_to :study, :foreign_key=> 'nct_id'
end
end
