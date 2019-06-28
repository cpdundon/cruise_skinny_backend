class VesselsController < ApplicationController
  def index
    @vessels = Vessel.all

    render json: @vessels
  end

	def create
		@vessel = Vessel.create(vessel_params)
		render json: @vessel
	end

private

	def vessel_params
		params.require(:vessel).permit(:name, :operator, :splash_date, :vessel_id)
	end
	
end
