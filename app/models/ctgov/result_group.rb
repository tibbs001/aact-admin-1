module Ctgov
  class ResultGroup < StudyRelationship
    has_many :baseline_counts
    has_many :drop_withdrawals
    has_many :milestones
    has_many :reported_events
  end
end
