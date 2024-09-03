Rails.application.routes.draw do
  #resources :articles, only: :index, constraints: lambda { |req| ['json', 'xml'].include? req.format }
  # :constraints para especificar um formato obrigatório, no caso em json e xml, incluídos no GET 127.0.0.1:3000/articles.json OU .xml

  resources :articles, only: :index, constraints: lambda { |req| %w[json].include? req.format }
  # %w = array em string

  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
