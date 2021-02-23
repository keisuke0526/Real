Rails.application.routes.draw do
  root 'items#index'
  resources :items do
    collection do
      get :indexInner
    end
  end
end
