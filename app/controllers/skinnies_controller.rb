class SkinniesController < ApplicationController
	def create
		@skinny = Skinny.create(skinny_params)
		render json: @skinny
	end

private

  def skinny_params
    params.require(:skinny).permit(:thought, :skinny_id, :vessel_id, :active)
  end
end
