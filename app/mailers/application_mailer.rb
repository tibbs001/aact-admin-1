class ApplicationMailer < ActionMailer::Base
  default from: "AACT <aact@ctti-clinicaltrials.org>"
  layout 'mailer'

  def self.admin_addresses
    [ENV['AACT_ADMIN_EMAILS']]
  end

end
