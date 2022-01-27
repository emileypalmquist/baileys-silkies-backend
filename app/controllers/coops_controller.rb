class CoopsController < ApplicationController
  before_action :find_coop, only: :show
  def index
    coops = Coop.includes({available_chickens: [:photo_attachment]}, :photo_attachment).where(supplier: false) 
    render json: coops
  end

  def show
    render json: @coop
  end

  def create
    coop = Coop.create!(coop_params)
    render json: coop, status: :created
  end

  private

  def coop_params
    params.permit(:name, :description, :photo, :supplier)
  end

  def find_coop
    @coop = Coop.includes(:available_chickens).find(params[:id])
  end
end
