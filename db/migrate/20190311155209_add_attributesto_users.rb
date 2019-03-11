class AddAttributestoUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :interview_dates, :date
    add_column :users, :score, :integer
    add_column :users, :progression_level, :integer
  end
end
