class SearchesController < ApplicationController

  before_action :check_params

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

  private
  def check_params
    unless (params[:keyword] and /[a-zA-Z0-9]/.match(params[:keyword])) or (params[:id] and /\d+/.match(params[:id]))
      render json: {}, status: :bad_request
    end
  end
end
