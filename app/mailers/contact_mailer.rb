class ContactMailer < ActionMailer::Base
  default from: "no-reply@c4cinc.org"
  reply_to: "pete@c4cinc.org"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact_confirmation.subject
  #
  def contact_confirmation(user)
    @user = user

    mail to: user.email, subject: "Coaching 4 Change has recieved your inquiry" 
  end
end
