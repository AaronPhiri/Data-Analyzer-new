class Sampledata < ActiveRecord::Base
	establish_connection "other_db"
	self.table_name = "users"
	self.primary_key ="user_id"
	has_one :Tryout, :foreign_key => :creator
end
