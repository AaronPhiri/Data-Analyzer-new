class CreateApplicationAtSites < ActiveRecord::Migration
  def change
    create_table :application_at_sites do |t|
      t.string :application_at_site_id
      t.decimal :application_id
      t.decimal :site_id

      t.timestamps
    end
  end
end
