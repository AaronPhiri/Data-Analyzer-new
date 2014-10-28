class CreateTryouts < ActiveRecord::Migration
  def change
    create_table :tryouts do |t|

      t.timestamps
    end
  end
end
