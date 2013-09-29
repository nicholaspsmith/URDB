class MoviesController < ApplicationController
  def show
    id = params[:id]
    @movie = Movie.find(id)
    @attributes = @movie.get_attributes
    @poster_url = @attributes['posters']['original']
    @critics_score = @attributes['ratings']['critics_score']
  end

  def show_all
    @movies = Movie.order('title ASC')
  end
end