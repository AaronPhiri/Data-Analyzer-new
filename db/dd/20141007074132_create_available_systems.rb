class CreateAvailableSystems < ActiveRecord::Migration
  def change
    create_table :available_systems do |t|
			t.string :name
 			t.string :location
			t.string :description
			t.timestamps
    end
  end
end
