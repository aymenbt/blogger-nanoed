Rails.application.routes.draw do

  

  get 'galerie/index'

  get 'partenaire/index'

  get 'partenaire/show'

  resources :evenements
  
  resources :partenaire, only: [:index, :show]
  resources :galerie, only: [:index]

 get 'tags/:tag', to: 'nante#tagged', as: :tag do
  resources :articles.tag_list
  resources :articles, only: [:index, :show, :tag_list]
 end
      
 
  get '/tagged', to: "nantes#tagged", as: :tagged  
   
  

  resources :nante, only: [:index, :show] do
    resources :comments
    resources :commentaires
    resources :tags
    resources :tag
    
  end 

  

  root to: 'nante#index'
 
  
 
  


  resources :search, only: [:index] do
    collection do
      get 'results'
    end
 end
   resources :article, only: [:index, :show] do
        resources :comment_articles
        resources :commentaires
        get 'tags/:tag', to: 'article#index', as: :tag
   end
   

   resources :restau, only: [:index, :show] do
        resources :recomments
        resources :commentaires
        
   end 
   
   
   

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  

end
