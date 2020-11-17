class CheckoutController < ApplicationController

    def create
        
        amiibo = Amiibo.find(params[:id])

        if amiibo.nil?
            redirect_to root_path
            return
        end 

        #set up stripe session for payment
        Stripe.api_key = ENV['SECRET_KEY']
        @session = Stripe::Checkout::Session.create(
            payment_method_types: ['card'],
            line_items: [{
                    name: amiibo.amibo_name,
                    amount: (amiibo.amibo_price * 100).to_i,
                    currency: 'aud',
                    quantity: 1
                }],
            success_url: checkout_success_url,
            cancel_url: checkout_cancel_url
        )
        respond_to do |format|
            format.js #render create.js.erb
        end 

    end 

    def success
        
    end 

    def cancel
    end 

end
