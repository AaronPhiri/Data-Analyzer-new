class Addcolumn2 < ActiveRecord::Migration
  def change
		add_column :users, :role, :string
		add_column :users, :location, :string
		add_column :users, :admin, :boolean
  end
end
