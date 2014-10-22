class tryoutsController < ApplicationController
	def index
		@tryouts = Tryout.limit(10)
	end
end
