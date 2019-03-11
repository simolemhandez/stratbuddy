class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :content
      t.integer :votes
      t.string :correctness
      t.references :question, foreign_key: true
      t.references :attempt, foreign_key: true

      t.timestamps
    end
  end
end
