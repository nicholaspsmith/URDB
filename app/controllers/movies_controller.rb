class MoviesController < ApplicationController
  def show
    id = params[:id]
    @movie = Movie.find(id)
  end

  def show_all
    @movies = Movie.order('title ASC')
  end
end