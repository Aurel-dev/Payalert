class AddCreditCardIdToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :credit_card_id, :string
  end
end
