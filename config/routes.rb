IFTTT::Engine.routes.draw do

  namespace :v1 do
    get :status,

  end
  get  "/ifttt/v1/status", to: "ifttt#status"
    post "/ifttt/v1/test/setup", to: "ifttt#setup"
end
