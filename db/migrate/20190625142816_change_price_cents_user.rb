class ChangePriceCentsUser < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :price_cents, :integer, default: 9000
  end
end
