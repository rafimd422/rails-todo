Rails.application.routes.draw do
  root "root#home"
  get "/about", to: "root#about"
  get "getjson", to: "root#api"
  post "/add", to: "root#add"
  patch "/post/:id", to: "root#update",  as: "update_post"
  delete "/post/:id", to: "root#destroy"
end
