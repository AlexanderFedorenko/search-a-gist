class SearchesController < ApplicationController
  # GET /searches
  def index
    render json: {}, status: :bad_request
  end

  # GET /searches/1
  def show
    @search = Search.new(keyword: params[:id])

    if @search.save
      render json: @search, status: :created, location: @search
    else
      render json: @search.errors, status: :unprocessable_entity
    end
  end
end
