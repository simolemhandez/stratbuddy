class ChangeColumnInAnswers < ActiveRecord::Migration[5.2]
  def change
    change_column :answers, :votes, :integer, default: 0
  end
end
