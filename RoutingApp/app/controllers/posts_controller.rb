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

    def edit

    end

    def update

    end

    def destroy
        
    end

    def missing

    end

    private
        def set_posts

        end
end