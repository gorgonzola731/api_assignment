Rails.application.routes.draw do
  namespace :v1 do
    resources :ideas, param: :category_id
    resources :categories
  end
end
