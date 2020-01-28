class VideosController < ApplicationController
  def index
    @video = Video.all
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
      render :edit
    end
  end

  def edit
    @video = Video.find(params[:id])
  end

  def destroy
    video = Video.find(params[:id])
    video.destroy

    redirect_to root_path
  end

  private

  def video_params
    params.require(:video).permit(:name, :url, :user)
  end
end
