class SearchesController < ApplicationController
  require 'open-uri'

  def search
    @search = Search.new(keyword: params[:keyword])

    if @search.save

      lookup

      render json: @search, status: :created, location: @search
    else
      render json: @search.errors, status: :unprocessable_entity
    end
  end

  def result
    render json: SearchResult.where(search_id: params[:id])
  end

  private
  def lookup
    response = JSON.load(open('https://api.github.com/gists/d2cc9b6151105c0ddd7337a7a2dc1fda/comments'))

    response.each do |comment|
      if JSON.parse(comment['body'])['keywords'].split(',').map(&:strip).include? params[:keyword]
        SearchResult.create(comment: comment, search_id: @search.id)
      end
    end
  end
end
