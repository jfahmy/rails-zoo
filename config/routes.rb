Rails.application.routes.draw do
  root "animals#index"

  get '/animals', to: "animals#index", as: "animals"
  get '/animals/new', to: "animals#new", as: "animal_form"
  get '/animal/:id/edit', to: "animals#edit", as: "animal_edit_form"

  get '/animals/:id', to: "animals#show", as: "animal"

  post '/animals', to: "animals#create"
  patch '/animals/:id', to: "animals#update"
end
