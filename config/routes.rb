Rails.application.routes.draw do
  devise_for :users
  root to: "videos#index"

  resources :videos do
    patch :increase_view, on: :member
  end

  get "/my-videos", to: "videos#my_videos"

end
