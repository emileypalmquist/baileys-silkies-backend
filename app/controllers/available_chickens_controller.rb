class AvailableChickensController < ApplicationController
  def index
    chicks = AvailableChicken.where(available: true) 
    render json: chicks
  end
end
