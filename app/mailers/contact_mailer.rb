class ContactMailer < ActionMailer::Base
  default from: @user.email
  reply_to: @user.email
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact_confirmation.subject
  #
  def contact_confirmation(user)
    @user = user

    mail to: "abrahamgrubin@gmail.com", subject: :subject, message: :question
  end
end
