Rails.application.routes.draw do
  namespace :admin do
    resources :gallery
  end
  get 'gallery/index'
  root to: 'home#top'
end
