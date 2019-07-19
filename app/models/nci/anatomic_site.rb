module Nci
  class AnatomicSite < Ctgov::StudyRelationship
    self.table_name = 'nci.anatomic_sites'
    self.primary_key = 'nct_id'
  end
end
