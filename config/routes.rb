Rails.application.routes.draw do
  root to: 'homes#code'
  resources :homes do
    get 'code', on: :collection
  end
end
