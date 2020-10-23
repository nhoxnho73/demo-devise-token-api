class MoviesController < ApplicationController
  devise_token_auth_group :member, contains: [:user]
  before_action :authenticate_member!

  def index 
    @movies = current_member.movies
    # render json: {status: 200, movies: @movies}
  end

  def show
    @movie = current_member.movies.find(params[:id])
  end
end
