class EncountertypeController < ApplicationController
	def index
	@encountertype = Encountertype.find_by_sql("select encounter_type.name, count(voided) as count, users.username
from encounter inner join encounter_type on encounter_type.encounter_type_id = encounter.encounter_type
inner join users on encounter.creator = users.user_id group by voided_by order by count desc")
	end
end
