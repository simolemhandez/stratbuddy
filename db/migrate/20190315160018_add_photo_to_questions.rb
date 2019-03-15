class AddPhotoToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :photo, :string
  end
end
