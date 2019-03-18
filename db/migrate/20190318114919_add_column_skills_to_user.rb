class AddColumnSkillsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :business_sense, :integer, default: 0
    add_column :users, :logic, :integer, default: 0
    add_column :users, :mathematics, :integer, default: 0
    add_column :users, :consumer_goods, :integer, default: 0
    add_column :users, :oil_and_gas, :integer, default: 0
    add_column :users, :manufacturing, :integer, default: 0
    add_column :users, :financial_services, :integer, default: 0
    add_column :users, :private_equity, :integer, default: 0
    add_column :users, :pharmaceuticals, :integer, default: 0
    add_column :users, :airline, :integer, default: 0
    add_column :users, :tmt, :integer, default: 0
    add_column :users, :non_profit, :integer, default: 0
    add_column :users, :public_sector, :integer, default: 0

  end
end

