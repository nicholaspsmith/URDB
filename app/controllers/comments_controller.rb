class CommentsController < ApplicationController
  def create
    @movie=Movie.find(params[:movie_id])

  end

  def comments_params 
    params[:comments].permit(:content)
  end

end
