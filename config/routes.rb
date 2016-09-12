Rails.application.routes.draw do

  get 'gist-search/:keyword', to: 'searches#search', as: 'search'
  get 'gist-search-results/:id', to: 'searches#result', as: 'search_result'
end
