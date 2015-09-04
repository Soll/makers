class RatesController < ApplicationController
  def create (user_id = params[:user_id], video_id = params[:video_id])
    @rate = Rate.new
    @rate = Rate.create(user_id: user_id, video_id: video_id)
    redirect_to video_path(video_id)
  end

  def destroy (user_id = params[:user_id], video_id = params[:video_id])
  	@rate = Rate.find_by user_id: user_id, video_id: video_id
  	@rate.destroy
  	redirect_to video_path(video_id)
  end
end
