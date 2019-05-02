class ChangeColumnPriceCentsinUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :price_cents, :integer, default: 10000
  end
end
