class TryoutController < ApplicationController
	def	index
		@sampledata = Sampledata.find_by_sql("SELECT encounter.date_created, encounter_type.name
FROM encounter INNER JOIN encounter_type ON encounter_type.creator = encounter.creator order by date_created ASC")
	end
def	results
		@sampledata = Sampledata.find_by_sql("select encounter_type.name, count(*) as count
from encounter_type inner join encounter on encounter_type.encounter_type_id = encounter.encounter_type where voided=1 group by encounter_type.name order by count desc;")
	end
def reader
		@sampledata = Sampledata.find_by_sql("select encounter_type.name, count(*) as count from encounter_type
inner join encounter on encounter_type.encounter_type_id = encounter.encounter_type
where voided=1 group by encounter_type.name")
end
def piechart
		@sampledata = Sampledata.find_by_sql("select encounter_type.name, count(*) as count
from encounter_type inner join encounter on encounter_type.encounter_type_id = encounter.encounter_type where voided=1 group by encounter_type.name order by count desc;")
end
end
