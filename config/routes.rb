Rails.application.routes.draw do
  resources :topics do
    resources :ideas
  end
end
