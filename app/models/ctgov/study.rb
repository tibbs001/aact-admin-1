module Ctgov
  class Study < Ctgov::PublicBase
    self.primary_key = 'nct_id'
    has_many :conditions,      :foreign_key => 'nct_id'
    has_many :countries,       :foreign_key => 'nct_id'
    has_many :design_outcomes, :foreign_key => 'nct_id'
    has_many :facilities,      :foreign_key => 'nct_id'
    has_many :interventions,   :foreign_key => 'nct_id'
    has_many :milestones,      :foreign_key => 'nct_id'
    has_many :outcomes,        :foreign_key => 'nct_id'
    has_many :reported_events, :foreign_key => 'nct_id'
    has_many :sponsors,        :foreign_key => 'nct_id'
    has_many :study_references, :foreign_key => 'nct_id'
  end
end
