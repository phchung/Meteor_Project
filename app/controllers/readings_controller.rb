class ReadingsController < ApplicationController

  def index
    @reading = Reading.all
  end

  def show
    @reading = Reading.find(params[:id])
  end

  def new
    @reading = Reading.new
  end

  def create

  end

  def destroy
    @reading = Reading.find(params[:id])
  end

  private

  def reading_params
    params.require(:readings).permit(
      :balloon_id, :reading_time, :altitude, :temperature, :pressure, :humidity
    )
  end
end
