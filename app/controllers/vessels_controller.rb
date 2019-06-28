class VesselsController < ApplicationController
	def index
		@vessels = Vessel.all
		
		render json: @vessels
	end

end
