# frozen_string_literal: true

class LunchSpotsController < ApplicationController
  def index
    @lunch_spots = LunchSpot.all
  end

  def edit
    @lunch_spot = LunchSpot.find(params[:id])
  end

  def update
    redirect_to lunch_spots_path
  end

  def new
    @lunch_spot = LunchSpot.new
  end

  def create
    @lunch_spot = LunchSpot.new(lunch_spot_params)
    if @lunch_spot.save
      redirect_to lunch_spots_path
    else
      render :new
    end
  end


  private

  def lunch_spot_params
    params.require(:lunch_spot).permit(:name, :description, :rating)
  end
end
