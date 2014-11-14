class CommentsController < ApplicationController
  def create
  	comment = Comment.new(comment_params)
  	comment.save
  	redirect_to sound_bite_path(comment.sound_bite)
  end

  private

  def sound_bite_params
  	params.require(:comment).permit(:body, :sound_bite_id)
  end

end
