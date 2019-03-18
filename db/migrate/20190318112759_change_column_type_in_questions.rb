class ChangeColumnTypeInQuestions < ActiveRecord::Migration[5.2]
  def change
    change_column :questions, :skills, :string
  end
end
