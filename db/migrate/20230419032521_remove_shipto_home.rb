class RemoveShiptoHome < ActiveRecord::Migration[7.0]
  def change
    remove_column :purchase_orders, :ship_to_home, :string
    add_column :purchase_orders, :ship_to_name, :string
  end
end
