Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, shallow: true
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
