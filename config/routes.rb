Rails.application.routes.draw do

  get 'gist-search/:id', to: 'searches#search', as: 'search'
  get 'search_result/:id', to: 'searches#result', as: 'search_result'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
