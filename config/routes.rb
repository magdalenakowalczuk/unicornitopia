Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations"}
  get 'pages/info'
  root to: redirect('/pages/info')
  resources :unicorns
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
