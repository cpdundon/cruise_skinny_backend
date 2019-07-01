class VesselsController < ApplicationController
  def index
    @vessels = Vessel.all_active

    render json: @vessels
  end

	def create
		@vessel = Vessel.create(vessel_params)
		render json: @vessel
	end

	def update
    @vessel = Vessel.find_by(id: params[:id])

    if @vessel.update(vessel_params)
      render json: @vessel 
    else
      render json: {error: 'Unable to update vessel.'}
    end
  end


private

	def vessel_params
		params.require(:vessel).permit(:name, :operator, :splash_date, :vessel_id, :active)
	end
	
end
