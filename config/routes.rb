Rails.application.routes.draw do
  get 'consumidor/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'productores/' => 'productor#index'
  get 'consumidores/' => 'consumidor#index'
end
