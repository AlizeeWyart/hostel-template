class HostelsController < ApplicationController

  def update
    @hostel = Hostel.find(params[:id])
    @hostel.update(hostel_params)
    redirect_to admin_path
  end

  private

  def hostel_params
    params.require(:hostel).permit(:name, :address, :email, :phone_number, :short_description, :description)
  end
end
