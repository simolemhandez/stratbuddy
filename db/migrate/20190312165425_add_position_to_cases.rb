class AddPositionToCases < ActiveRecord::Migration[5.2]
  def change
    add_column :cases, :position, :integer
  end
end
