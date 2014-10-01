class VideosController < ApplicationController

  def index
    @videos = Video.order(id: :desc).all
    @video = Video.new()
  end

  def create
    @video = Video.new(video_params)
    if @video.save
      redirect_to videos_path
    else
      redirect_to videos_path
    end
  end

  def destroy
    @video = Video.find_by id: params[:id]
    @video.destroy
    flash[:warning] = "#Video removed"
    redirect_to videos_path
  end

  private

    def video_params
      params.require(:video).permit(:url)
    end

end
