class CreateSampledata < ActiveRecord::Migration
  def change
    create_table :sampledata do |t|
			t.string :user_id
			t.decimal :value

      t.timestamps
    end
  end
end
