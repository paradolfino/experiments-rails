class ArticlesController < ApplicationController
    def create
        @article = Article.new(params[:article])
    end

end