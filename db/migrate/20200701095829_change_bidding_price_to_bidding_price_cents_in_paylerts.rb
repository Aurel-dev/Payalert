class ChangeBiddingPriceToBiddingPriceCentsInPaylerts < ActiveRecord::Migration[6.0]
  def change
    rename_column :paylerts, :bidding_price, :bidding_price_cents
  end
end
