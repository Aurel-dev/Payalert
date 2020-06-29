class SetDefault < ActiveRecord::Migration[6.0]
  def change
    change_column :paylerts, :status, :string, default: "En attente d'execution"
  end
end
