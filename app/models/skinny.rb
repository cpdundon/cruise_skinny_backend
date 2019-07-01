class Skinny < ApplicationRecord
	belongs_to :vessel

	attribute :active, :boolean, default: true

	def self.find_by_vessel_id(vessel_id)
		self.where(vessel_id: vessel_id)
	end
end
