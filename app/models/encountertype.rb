class Encountertype < ActiveRecord::Base
	establish_connection "other_db"
	self.table_name = "encounter_type"	
	self.primary_key = "encounter_type_id"
	has_one :Tryout, :foreign_key => :creator 
end
