class ApplicationMailer < ActionMailer::Base
  default from: Rails.application.credentials.gmail[:email_adrress]
  layout 'mailer'
end
