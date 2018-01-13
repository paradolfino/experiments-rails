class PostsController < ApplicationController
    before_action :set_article, only: [:edit,:update,:show,:destroy]
    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def edit
        
    end

    def create
        #render plain: params[:article].inspect
        @post = Post.new
        #@post.user = User.first -- after add User and associate to Post
        if @article.save
            flash[:success] = "Article was successfully created"
            redirect_to article_path(@article)
        else
            render 'new'
        end
    end
end
