Rails.application.routes.draw do
  root to: "pages#main"

  controller :pages do
    get "top", action: "top"
    get "analytics_main", action: "analytics_main"
    get "analytics_price", action: "analytics_price"
    get "analytics_volume", action: "analytics_volume"
    get "analytics_production", action: "analytics_production"
    get "analytics_foreign", action: "analytics_foreign"
    # get "contact-us", action: "contact_us"
  end

  # mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # mount Ckeditor::Engine => '/ckeditor'
  #devise_for :users


  match "*url", to: "application#render_not_found", via: [:get, :post, :path, :put, :update, :delete]
end