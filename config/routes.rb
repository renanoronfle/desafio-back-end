require 'sidekiq/web'

Rails.application.routes.draw do

  Rails.application.routes.draw do
    mount Sidekiq::Web => '/sidekiq'
  end
  resources :cnabs
end
