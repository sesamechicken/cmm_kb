CmmKb::Application.routes.draw do

  get 'tags/:tag', to: 'tags#show', as: :tag


  resources :articles do
    collection do
      get :search
    end
  end 

  resources :categories

  root :to => 'articles#index'
end