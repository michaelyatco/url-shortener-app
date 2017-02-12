Rails.application.routes.draw do
  redirect_to root_path, notice: 'Unknown Route' if !model
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
     authenticated :user do
       root 'links#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/registrations#new', as: :unauthenticated_root
    end
  end

#links routes
  get "/links", to: "links#index"
  get "/links/new", to: "links#new"
  post "/links", to: "links#create"
  get "/links/:id", to: "links#show"
  get "/links/:id/edit", to: "links#edit"
  patch "/links/:id", to: "links#update"
  delete "/links/:id", to: "links#destroy"

#visits routes
  get "/visits", to: "visits#new"
  post "/visits", to: "visits#create"
end
