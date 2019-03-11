class CreateCases < ActiveRecord::Migration[5.2]
  def change
    create_table :cases do |t|
      t.text :content
      t.string :name
      t.integer :day
      t.string :industry

      t.timestamps
    end
  end
end
