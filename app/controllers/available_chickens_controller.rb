class AvailableChickensController < ApplicationController
  before_action :find_available_chicken, only: [:destroy]

  def index
    if params[:coop_id]
      chicks = AvailableChicken.includes(:photo_attachment).where(available: true, coop_id: params[:coop_id]) 
    else
      chicks = AvailableChicken.includes(:photo_attachment).where(available: true) 
    end
    render json: chicks
  end

  def create
    chick = AvailableChicken.create!(chicken_params)
    render json: chick, status: :created
  end

  def destroy
    @chick.destroy
    render json: {message: "deleted"}, status: :ok
  end

  private

  def find_available_chicken
    @chick = AvailableChicken.find(params[:id])
  end

  def chicken_params
    params.permit(:photo, :hatch_date, :color, :feather_type, :sex, :coop_id, :available, :naked_neck)
  end
end
