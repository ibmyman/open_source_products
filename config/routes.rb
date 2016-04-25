Rails.application.routes.draw do

  root :to => 'static_pages#home'

  # Mount Spree's routes
  mount Spree::Core::Engine, :at => '/shop'


end
