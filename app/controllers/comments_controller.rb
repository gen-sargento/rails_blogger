class CommentsController < ApplicationController
include CommentsHelper
#  def create
    #@comments = Comment.new(comment_params)
   # @comment.article.id = params[:article_id]
  #  @comment.save
 #   redirect_to article_path(@comment.article)
#  end
  def create
    @comment = Comment.new(comment_params)
    @comment.article_id = params[:article_id]

    @comment.save

    redirect_to article_path(@comment.article)
  end

end
