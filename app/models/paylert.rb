class Paylert < ApplicationRecord
  belongs_to :user
  belongs_to :product
  monetize :bidding_price_cents

  def bidding_price
    if bidding_price_cents.nil?
      return nil
    else 
      return self.bidding_price_cents/100
    end
  end
  
  def bidding_price=(price)
    self.bidding_price_cents = price.to_i * 100
  end
end
