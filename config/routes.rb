# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/openings', to: 'opening#index'
      resources :opening, only: %i[show create destroy update]
    end
  end
end
