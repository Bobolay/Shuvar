Rails.application.routes.draw do
  root to: "pages#main"

  get "views", to: "application#views_index"
  get "views/*path", to: "application#show_view"

  controller :pages do
    get "top", action: "top"
    get "product_one", action: "product_one"
    get "product_one_filters", action: "product_one_filters"
    get "analytics_main", action: "analytics_main"
    get "analytics_price", action: "analytics_price"
    get "analytics_volume", action: "analytics_volume"
    get "analytics_production", action: "analytics_production"
    get "analytics_foreign", action: "analytics_foreign"
    get "news", action: "news"
    get "news_one", action: "news_one"
    get "expert_view", action: "expert_view"
    get "about_us", action: "about_us"
    get "contacts", action: "contacts"
    get "register", action: "register"
    get "log_in", action: "log_in"
    get "personal_account", action: "personal_account"
    get "personal_subscribe", action: "personal_subscribe"
    get "search_result", action: "search_result"

  end

  # mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # mount Ckeditor::Engine => '/ckeditor'
  #devise_for :users


  match "*url", to: "application#render_not_found", via: [:get, :post, :path, :put, :update, :delete]
end