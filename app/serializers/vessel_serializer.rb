class VesselSerializer < ActiveModel::Serializer
  attributes :id, :vessel_id, :name, :operator, :splash_date, :active, :skinny

	def skinny 
		activeSkinnies = self.object.skinnies.select { |hash| hash[:active] }
    activeSkinnies.map do |thought|
      {	thought: thought.thought, 
				skinny_id: thought.skinny_id,
				active: thought.active,
				id: thought.id,
				vessel_id: thought.vessel_id	
			}
    end 
  end 
end
