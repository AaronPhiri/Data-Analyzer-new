class CreateAvailableSystems < ActiveRecord::Migration
  def change
    create_table :available_systems do |t|

      t.timestamps
    end
  end
end
