class MoviesController < ApplicationController
  def show
    id = params[:id]
    @movie = Movie.find(id)
    @attributes = @movie.get_attributes
  end

  def show_all
    @movies = Movie.order('title ASC')
  end
end