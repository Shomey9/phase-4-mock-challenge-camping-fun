Rails.application.routes.draw do
  resources :signups
  resources :campers
  # GET   : /campers      : index
  # GET   : /campers/:id  : show
  # POST  : /campers      : create x NEW 
  # PATCH : /campers/:id  : update x EDIT 


  resources :activities
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
