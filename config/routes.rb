CmmKb::Application.routes.draw do

  resources :daves


  get 'tags/:tag', to: 'tags#show', as: :tag


  resources :articles do
    collection do
      get :search
    end
  end 

  resources :categories

  root :to => 'articles#index'
end