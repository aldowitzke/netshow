Rails.application.routes.draw do
  devise_for :users
  root to: "videos#index"

  resources :videos
  get "/my-videos", to: "videos#my_videos"
end
