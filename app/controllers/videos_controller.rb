class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def show
    @video = Video.find(params[:id])
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    @video.user = current_user

    if @video.save
      redirect_to @video
    else
      render :new
    end
  end

  def update
    @video = Video.find(params[:id])

    if @video.user == current_user && @video.update(video_params)
      redirect_to @video
    else
      flash[:danger] = "You can only edit your own videos."
      render :edit
    end
  end

  def edit
    @video = Video.find(params[:id])
  end

  def destroy
    video = Video.find(params[:id])
    video.destroy if video.user == current_user

    redirect_to root_path
  end

  def my_videos
    @videos = Video.where(user_id: current_user.id)
  end

  private

  def video_params
    params.require(:video).permit(:name, :url, :user)
  end
end
