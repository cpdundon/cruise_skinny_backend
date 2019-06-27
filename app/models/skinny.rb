class Skinny < ApplicationRecord
	belongs_to :vessel

	attribute :active, :boolean, default: true
end
