class PostsController < ApplicationController
    before_action :find_post, only:[:show,:edit,:update,:destroy]

    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.create(post_params)
        redirect_to post_path(@post)
    end

    def show
       # @post = Post.find(params[:id])
       @comment = Comment.new
    end

    def edit
        #@post = Post.find(params[:id])
            if @post.user != @logged_in_user
                redirect_to @post
            end

    end

    def update
        @post.update(post_params)
        redirect_to post_path(@post)
    end

    def destroy
        @user = @post.user
        @post.destroy
        redirect_to user_path(@user)
    end

    private

    def post_params
        params.require(:post).permit(:content,:user_id)
    end
    
    def find_post
        @post = Post.find(params[:id])
    end
end
