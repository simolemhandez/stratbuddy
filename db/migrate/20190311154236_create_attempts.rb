class CreateAttempts < ActiveRecord::Migration[5.2]
  def change
    create_table :attempts do |t|
      t.references :user, foreign_key: true
      t.references :case, foreign_key: true
      t.boolean :completed

      t.timestamps
    end
  end
end
