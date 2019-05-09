class AddColumnPriceCentsBisToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :price_cents_bis, :integer, default: 5000, null: false
  end
end
