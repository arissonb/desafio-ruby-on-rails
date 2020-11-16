Rails.application.routes.draw do
  devise_for :usuarios
  root to: 'cnab#index'
  post '/attach/file', to: 'cnab#upload_file'
  get '/index/file', to: 'cnab#index_file', as: 'index_file'

  namespace :api do
    namespace :v1 do
      resources :cnab
    end
  end
end
