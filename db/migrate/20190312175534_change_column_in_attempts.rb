class ChangeColumnInAttempts < ActiveRecord::Migration[5.2]
  def change
    change_column :attempts, :completed, :boolean, default: false
  end
end
