Rails.application.routes.draw do
# root "main#index"
root "cities#view"
get '/cities/view', to: 'cities#view'
get '/cities/new', to: 'cities#new'
post '/cities/create', to: 'cities#create'
get  '/cities/update', to: 'cities#update'
post '/cities/update', to:'cities#update2'


end
