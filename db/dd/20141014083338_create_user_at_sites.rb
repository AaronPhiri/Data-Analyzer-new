class CreateUserAtSites < ActiveRecord::Migration
  def change
    create_table :user_at_sites do |t|
      t.decimal :user_id
      t.decimal :site_id
      t.decimal :user_at_site_id

      t.timestamps
    end
  end
end
