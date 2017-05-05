Rails.application.routes.draw do
    resources :posts

    get  "avatar(/:size/:text)", to: "avatar#index",    as: :avatar
    get  "/*id",                 to: 'pages#show',      as: :page, format: false, constraints: HighVoltage::Constraints::RootRoute
    root 'pages#home'
end
