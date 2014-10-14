class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.decimal :site_id
      t.string :site_name

      t.timestamps
    end
  end
end
