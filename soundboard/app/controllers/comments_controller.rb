class CommentsController < ApplicationController
  def create
  	puts params[:comment][:body]
  	@comment = Comment.new(params[:comment])
  	@comment.save
  end

end
