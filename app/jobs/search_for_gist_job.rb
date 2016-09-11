class SearchForGistJob < ApplicationJob
  require 'open-uri'
  queue_as :default

  def perform(search_id, keyword)
    response = JSON.load(open('https://api.github.com/gists/d2cc9b6151105c0ddd7337a7a2dc1fda/comments'))

    response.each do |comment|

      if JSON.parse(comment['body'])['keywords'].split(',').map(&:strip).include? keyword
        SearchResult.create(comment: comment, search_id: search_id)
      end
    end
  end
end
