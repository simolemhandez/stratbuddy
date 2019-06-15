class ChangePriceCentsinUser < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :price_cents, :integer, default: 6000
  end
end
