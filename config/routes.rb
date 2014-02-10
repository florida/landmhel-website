Landmhel::Application.routes.draw do
  get 'listings' => 'listings#listings'
  get 'sales' => 'listings#sales'
  get 'listings/:id' => 'listings#listings_details', as: :listing_details
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'
  get 'contact' => 'home#contact'
  get 'about' => 'home#about'
  get 'services' => 'home#services'
  get 'our_team' => 'home#our_team'
  post 'contact' => 'home#contact'
  patch 'contact' => 'home#contact'
  get "query" => 'search#query'
  get 'sitemap' => 'home#sitemap'
end
