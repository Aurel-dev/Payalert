class SetDefault < ActiveRecord::Migration[6.0]
  def change
    change_column :paylerts, :status, :string, default: "pending"
  end
end
