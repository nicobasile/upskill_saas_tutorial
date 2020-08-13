Rails.application.routes.draw do
    root to: 'pages#home'
    devise_for :users, controllers: { registrations: 'users/registrations' }
    resources :users do
        resource :profile
    end
    get 'about', to: 'pages#about'
    get 'subscription', to: 'pages#subscription'
    get 'projects', to: 'pages#projects'
    resources :contacts, only: :create
    get 'contact-me', to: 'contacts#new', as: 'new_contact'
end
