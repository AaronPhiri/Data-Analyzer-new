class Indie < ActiveRecord::Base
	has_many :Sampledata
	has_many :Tryout
end
