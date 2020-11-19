Rails.application.routes.draw do
  get 'amiigos', to: 'amiigos#index'
  get 'about', to: 'amiigos#about', as: 'about_amiigos'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users

  resources :amiibos

  scope '/checkout' do

    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
    get 'success', to: 'checkout#success', as: 'checkout_success'

  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "amiibos#index"
end
