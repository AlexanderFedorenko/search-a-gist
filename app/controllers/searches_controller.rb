class SearchesController < ApplicationController

  def search
    @search = Search.new(keyword: params[:keyword])

    if @search.save
      SearchForGistJob.perform_now(@search.id, params[:keyword])

      render json: @search, status: :created, location: @search
    else
      render json: @search.errors, status: :unprocessable_entity
    end
  end

  def result
    render json: SearchResult.where(search_id: params[:id])
  end
end
