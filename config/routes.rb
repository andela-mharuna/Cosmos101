Rails.application.routes.draw do
 resources :answers
 resources :questions
  # get 'home/index'

  root 'home#index'

  get '/about' => 'home#about'

  # get '/questions/:id' => 'home#question'

  # post '/questions' => 'home#temp'

  #post '/answers' => 'home#temp'

  # post '/answers' => 'home#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
