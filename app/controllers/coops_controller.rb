class CoopsController < ApplicationController
  before_action :find_coop, only: :show
  def index
    coops = Coop.includes(:available_chickens).where(supplier: false) 
    render json: coops
  end

  def show
    render json: @coop
  end

  private

  def find_coop
    @coop = Coop.includes(:available_chickens).find(params[:id])
  end
end
