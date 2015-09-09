class RatesController < ApplicationController
  def create
    @rate = current_user.rates.create(video_id: params[:video_id])
    redirect_to video_path(params[:video_id])
  end

  def destroy
  	@rate= Rate.find(params[:id])
  	redir_video_id = @rate.video_id
    @rate.destroy
  	redirect_to video_path(redir_video_id)
  end
end
