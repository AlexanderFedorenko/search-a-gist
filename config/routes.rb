Rails.application.routes.draw do

  get 'gist-search/:keyword', to: 'searches#search', as: 'search'
  get 'gist-search-results/:id', to: 'searches#result', as: 'search_result'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
