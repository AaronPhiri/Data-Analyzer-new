class AdColumnsToTryout < ActiveRecord::Migration
  def change
		add_column :tryouts, :user_name, :string
		add_column :tryouts, :count, :decimal
		
  end
end
