class BalloonsController < ApplicationController
  def show
    @balloon = Balloon.find(params[:id])
  end

  def index
    @balloons = Balloon.all
  end

  def edit
    @balloon = Balloon.find(params[:id])
  end

  def update
    @balloon = Balloon.find(params[:id])
    if @balloon.update(balloon_params)
      redirect_to balloon_url(@balloon)
    else
      flash.now[:errors] = @balloon.errors.full_messages
      render :edit
    end
  end

  private

  def balloon_params
    params.require(:balloon).permit(
      :flight_number, :location, :technician, :recovered
    )
  end
end
