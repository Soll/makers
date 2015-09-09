class RatesController < ApplicationController
  def create
    @rate = current_user.rates.create(video_id: params[:video_id])
    redirect_to video_path(params[:video_id])
  end

  def destroy
  	@rate= Rate.find(params[:id])
    @rate.destroy
  	redirect_to video_path(@rate.video_id)
  end
end
