class Vessel < ApplicationRecord
	has_many :skinnies

	attribute :active, :boolean, default: true
end
