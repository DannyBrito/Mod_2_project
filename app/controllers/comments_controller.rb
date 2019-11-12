class CommentsController < ApplicationController

    def new 
        @comment = Comment.new
    end

    def create 
        @comment = Comment.create(content: comment_params[:content], user_id: params[:user_id], post_id: params[:post_id])
        redirect_to post_path(params[:post_id])
    end 

    private
    def comment_params
        params.require(:comment).permit(:content, :user_id, :post_id)
    end

end
