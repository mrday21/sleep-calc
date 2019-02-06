Rails.application.routes.draw do
  resources :sleep_calcs
  root to: 'pages#home'
   get 'calculator', to: 'pages#calculator'
end
