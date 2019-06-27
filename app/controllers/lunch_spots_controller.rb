# frozen_string_literal: true

class LunchSpotsController < ApplicationController
  def index
    @lunch_spots = LunchSpot.all
  end

  def update
  end

  def create
    @lunch_spot = LunchSpot.new(lunch_spot_params)
    if @lunch_spot.save
      redirect_to lunch_spots_path, alert: 'Spot created successfully.'
    else
      redirect_to new_lunch_spot_path, alert: 'Error creating lunch spot.'
    end
  end

  def new
    @lunch_spot = LunchSpot.new
  end


  private

  def lunch_spot_params
    params.require(:lunch_spot).permit(:name, :description, :rating)
  end
end
