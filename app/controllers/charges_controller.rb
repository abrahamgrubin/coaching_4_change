class ChargesController < ApplicationController
  def new
  end

  def create
  # Amount in cents
    token = params[:token]
    @amount = params[:amount]

    customer = Stripe::Customer.create(
      :email => 'example@stripe.com',
      :card  => token[:id],
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Donate to C4C',
      :currency    => 'usd'
    )
    render json: {sucess: true, message: "Thank you for supporting Coaching 4 Change!"}
  rescue Stripe::CardError => e
    render json: {sucess: false, message: e.message}
  end


end
