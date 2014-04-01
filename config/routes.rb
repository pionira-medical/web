Rails.application.routes.draw do
  root 'homepage#index'
  get '/contact', to: 'homepage#contact'
  get '/about', to: 'homepage#about'
end
