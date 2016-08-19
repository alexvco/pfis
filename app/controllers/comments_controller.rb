class CommentsController < ApplicationController
before_action :set_post

def create
  @post.comments.create!(comment_params)
  redirect_to @post
end


private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:body)
    end
end
