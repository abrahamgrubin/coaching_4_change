class ContactsController < ApplicationController

def show 
  @user = User.find(params[:id])
end

def new 
  @user = User.new
end 

def create 
  @user = User.new(params[:user])
  if @user.save 
    redirect_to @user, notice: "You have contacted C4C successfully. You will recieve a confirmation email shortly."
  else 
    render :new 
  end 
end

end
