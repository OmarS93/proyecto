class Area < ActiveRecord::Base
	has_many :operations
	has_many :instructors
end
