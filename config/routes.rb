Rails.application.routes.draw do
  # root to: 'static_pages#root'
root to: redirect("/balloons")
  # namespace :api, defaults: {format: :json} do
    resources :balloons, only: [:index,:show,:update,:edit]
  # end
end
