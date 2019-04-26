class AddDifficultyToCases < ActiveRecord::Migration[5.2]
  def change
    add_column :cases, :difficulty, :string
  end
end
