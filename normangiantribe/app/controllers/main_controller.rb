class MainController < ApplicationController
    def home
        @post = Post.last
    end
    def about
    end
end
