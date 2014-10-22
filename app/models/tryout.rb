class Tryout < ActiveRecord::Base
	establish_connection "other_db"	
	self.table_name = "encounter"
	self.primary_key = "encounter_id"
	has_many :Users, :class_name => 'Sampledata', :foreign_key => :creator
end
