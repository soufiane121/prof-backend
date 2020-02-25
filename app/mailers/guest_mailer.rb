class GuestMailer < ApplicationMailer
    default from: Rails.application.credentials.gmail[:email_adrress]

  def welcome_email
    @user = params[:user]
    @message = params[:message]
    # @url  = 'http://example.com/login'
    mail(to: Rails.application.credentials.gmail[:admin_email], subject: 'Someone visit your website and send you email')
  end
end
