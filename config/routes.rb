Rails.application.routes.draw do
  root "static_pages#index"
  get "/auth/:provider/callback", to: "sessions#create"
  get "/auth/failure", to: redirect("/")
  delete '/logout', to: 'sessions#destroy'
end
