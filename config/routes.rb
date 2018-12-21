Rails.application.routes.draw do
  
  get '/phones/assign', to: 'phones#assign'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
