class SkinnySerializer < ActiveModel::Serializer
  attributes :id, :skinny_id, :thought, :vessel

	def vessel
    {
			table_id: self.object.vessel.id, 
			vessel_id: self.object.vessel.vessel_id
			name: self.object.vessel.name
			operator: self.object.vessel.operator
		}
  end 
end
