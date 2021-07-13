Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :registers

  #app/welcome_controller
  #always route to welcome/index page. this will be the home page
  root to: "welcome#index"  
  get "welcome/index"

  #this will be the register page route
  get "register", to: "registers#register"
  post "register", to: "logins#login"

  #this will be the login page route
  get "login", to: "logins#login"
  post "login", to: "service#service"

  get "logout", to: "logins#logout"

  #this will be the service seeker page
  get "services", to: "service#service"
  get "services/job_posting", to: "service#job_posting"

end