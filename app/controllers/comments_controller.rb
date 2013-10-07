class CommentsController < ApplicationController
  def create
    @movie=Movie.find(params[:movie_id])

    @comment = @movie.comments.new(comment_params)

    if @comment.save
      redirect_to @comment.movie, notice: 'Comment was successfully created.'
    else
      redirect_to @comment.movie, alert: 'Comment was not successfully created'  
    end   
  end

  def comments_params 
    params[:comments].permit(:content)
  end

end
