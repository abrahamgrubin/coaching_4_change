class ContactMailer < ActionMailer::Base
  default from: "app31745144@heroku.com"
 

  def contact_confirmation(contact)
    @contact = contact

    mail to: "abrahamgrubin@gmail.com", subject: :subject
  end
end
