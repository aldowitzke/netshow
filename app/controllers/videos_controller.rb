class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def show
    set_video
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    @video.user = current_user
    @video.view = 0

    if @video.save
      redirect_to @video
    else
      flash[:alert] = @video.errors.full_messages.join(", ")
      render :new
    end
  end

  def update
    set_video

    video_update(@video)
  end

  def edit
    set_video
  end

  def destroy
    video = Video.find(params[:id])
    video.destroy if video.user == current_user

    redirect_to root_path
  end

  def my_videos
    @videos = Video.where(user_id: current_user.id)
  end

  def increase_view
    set_video
    @video.update(video_params)
  end

  private

  def video_params
    params.require(:video).permit(:name, :url, :user, :view)
  end

  def set_video
    @video = Video.find(params[:id])
  end

  def video_update(video)
    if @video.user == current_user && @video.update(video_params)
      redirect_to @video
    elsif video.user != current_user && @video.update(video_params)

      binding.pry

      flash[:danger] = "You can only edit your own videos."
      render :edit
    else
      flash[:danger] = "Title and URL required."
      render :edit
    end
  end
end
