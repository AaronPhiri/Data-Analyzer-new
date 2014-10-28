class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
			t.string :user_id
			t.decimal :count

      t.timestamps
    end
  end
end
