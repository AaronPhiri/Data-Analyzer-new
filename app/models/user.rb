class User < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true  
	has_secure_password

	after_destroy :ensure_an_admin_remains
	private
		def ensure_an_admin_remains
			if User.count.zero?
				raise "Cant delete last user"
			end
		end

	has_many :indicator, counter_cache: true
	has_many :available_systems
end
