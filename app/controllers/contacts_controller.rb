class ContactsController < ApplicationController

def show 
  @contact = Contact.find(params[:id])
end

def new 
  @contact = Contact.new
end 

def create 
  @contact = Contact.new(contact_params)
  if @contact.save 
    ContactMailer.contact_confirmation.deliver
    redirect_to 'new', notice: "You have contacted C4C successfully. You will recieve a confirmation email within 2 business days."
  else 
    render :new 
  end 
end
 private 
  def contact_params
   params.require(:contact).permit(:name, :email, :subject, :question) 
  end 
end
