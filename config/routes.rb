Rails.application.routes.draw do
  get 'welcome/index'
  resources :grupo
  resources :equipos
  resources :resultados



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "welcome#index"
end
