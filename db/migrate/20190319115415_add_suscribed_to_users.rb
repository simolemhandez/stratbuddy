class AddSuscribedToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :suscribed, :boolean, default: false
  end
end
