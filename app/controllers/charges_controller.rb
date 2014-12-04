class ChargesController < ApplicationController
  def new
  end

  def create
  # Amount in cents
    @amount = params[:amount]

    customer = Stripe::Customer.create(
      :email => 'example@stripe.com',
      :card  => params[:stripeToken],
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Donate to C4C',
      :currency    => 'usd'
    )
  flash[:success] = "Thank you for supporting Coaching 4 Change!"
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end


end
