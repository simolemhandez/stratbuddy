class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :content
      t.integer :timing
      t.text :correction
      t.integer :skills
      t.string :keywords, array: true, default: []
      t.references :case, foreign_key: true

      t.timestamps
    end
  end
end
