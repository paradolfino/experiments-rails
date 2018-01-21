class PostsController < ApplicationController
    before_action :set_post, only: [:edit,:update,:show,:destroy]
    before_action :require_user, except: [:index, :show, :new, :create ]
    before_action :require_admin, only: [:new, :create, :edit, :update, :destroy]
    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def edit
        
    end

    def create
        #render plain: params[:post].inspect
        @post = Post.new(post_params)
        #@post.user = User.first -- after add User and associate to Post
        if @post.save
            flash[:success] = "Post was successfully created"
            redirect_to post_path(@post)
        else
            render 'new'
        end
    end

    private
        def post_params
            params.require(:post).permit(:title, :body)
        end
        def set_post
            @post = Post.find(params[:id])
        end
end
