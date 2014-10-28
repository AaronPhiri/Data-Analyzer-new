class CreateEncountertypes < ActiveRecord::Migration
  def change
    create_table :encountertypes do |t|

      t.timestamps
    end
  end
end
