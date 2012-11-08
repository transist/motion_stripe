module Stripe
  def self.client(key)
    StripeConnection.connectionWithPublishableKey(key)
  end
  
  def self.card(number, name, sec_code, exp_month, exp_year)
    card =  StripeCard.alloc.init
    card.number =       number
    card.name =         name
    card.securityCode = sec_code
    card.expiryMonth =  NSNumber.numberWithInteger(exp_month)
    card.expiryYear =   NSNumber.numberWithInteger(exp_year)
    card
  end
  
  def self.charge(stripe_client, card)
    stripe_client.performRequestWithCard(card, success: Stripe.success, error: Stripe.error) 
  end
  
  def self.error(error_respose)
    puts error_response
  end
  
  def self.success(token)
    puts token
  end
end