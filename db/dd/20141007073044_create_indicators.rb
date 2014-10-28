class CreateIndicators < ActiveRecord::Migration
  def change
    create_table :indicators do |t|
			t.string :name
			t.string :goal
			t.string :description

      t.timestamps
    end
  end
end
