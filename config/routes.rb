Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Root path
   root to: 'home#index'
   post '/lead' => 'leads#create'
end
