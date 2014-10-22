class TryoutController < ApplicationController
	def	index
		@sampledata = Sampledata.find_by_sql("SELECT users.user_id, users.username, count(*) as count
FROM encounter INNER JOIN users ON users.user_id = encounter.creator GROUP BY username;")
	end
end
