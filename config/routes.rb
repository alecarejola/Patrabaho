Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #app/welcome_controller
  #always route to welcome/index page. this will be the home page
  root to: "welcome#index"  
  get "welcome/index"

  #this will be the register page route
  get "register", to: "registers#register"

  #this will be the login page route
  get "login", to: "login#login"

  #this will be the service seeker page
  get "services", to: "service#service"

  resources :register

end
