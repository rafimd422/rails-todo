Rails.application.routes.draw do
  root "root#home"
  get "/about", to: "root#about"
  get "getjson", to: "root#api"
  post "/add", to: "root#add"
  # get "/add/:id", to: "root#show", as: post_show
  delete "/post/:id", to: "root#destroy"
end
