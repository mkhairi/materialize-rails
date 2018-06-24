Rails.application.routes.draw do
  devise_for :users
    resources :posts

    get  "avatar(/:size/:text)", to: "avatar#index",    as: :avatar
    get  "/*id",                 to: 'pages#show',      as: :page, format: false, constraints: HighVoltage::Constraints::RootRoute.new
    root 'pages#home'
end
