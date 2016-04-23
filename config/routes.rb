Rails.application.routes.draw do

  root :to => 'static_pages#homeuse '

  # Mount Spree's routes
  mount Spree::Core::Engine, :at => '/'


end
