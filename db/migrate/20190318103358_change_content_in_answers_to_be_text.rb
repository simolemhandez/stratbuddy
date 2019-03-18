class ChangeContentInAnswersToBeText < ActiveRecord::Migration[5.2]
  def change
    change_column :answers, :content, :text
  end
end
