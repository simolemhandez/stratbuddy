class AddColumnPromoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :promo, :string, default: ""
  end
end
