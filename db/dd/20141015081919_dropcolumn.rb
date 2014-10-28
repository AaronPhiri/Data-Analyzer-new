class Dropcolumn < ActiveRecord::Migration
  def change
    remove_column :users,:location
    remove_column :users,:role
  end
end
