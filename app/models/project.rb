class Project < ApplicationRecord
	has_dynamic_attributes
	validates :title, presence: true


	
end
