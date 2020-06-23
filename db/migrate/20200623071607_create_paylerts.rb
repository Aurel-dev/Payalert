class CreatePaylerts < ActiveRecord::Migration[6.0]
  def change
    create_table :paylerts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :bidding_price
      t.date :finished_at
      t.string :status

      t.timestamps
    end
  end
end
