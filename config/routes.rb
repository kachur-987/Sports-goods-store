Rails.application.routes.draw do
  devise_for :users
  get 'categories/index'

  get 'categories/new'

  get 'categories/show'

  get 'products/index'

  get 'products/new'

  get 'products/show'

  get 'products/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
