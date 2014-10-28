class CreateIndicatorCounts < ActiveRecord::Migration
  def change
    create_table :indicator_counts do |t|
      t.decimal :indicator_id
      t.decimal :site_id
      t.decimal :result

      t.timestamps
    end
  end
end
