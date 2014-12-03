class Contact < ActiveRecord::Base 
  validates_presence_of :email, :name, :subject, :question
end 