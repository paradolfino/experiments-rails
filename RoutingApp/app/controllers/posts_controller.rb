class PostsController < ApplicationController
    before_action :set_posts, only: [:show, :edit, :update, :destroy]
    def index

    end

    def show
        @post = Post.find(params[:id])
    end

    def new

    end
    
    def create

    end

    def missing

    end
end