class Vessel < ApplicationRecord
	has_many :skinnies

	attribute :active, :boolean, default: true

	def self.all_active
		self.where(active: true)
	end
end
