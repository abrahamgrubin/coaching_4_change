class ContactMailer < ActionMailer::Base
  default from: "abrahamgrubin@gmail.com"
 
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact_confirmation.subject

  def contact_confirmation(contact)
    @contact = contact

    mail to: "abrahamgrubin@gmail.com", subject: :subject, message: :question
  end
end
