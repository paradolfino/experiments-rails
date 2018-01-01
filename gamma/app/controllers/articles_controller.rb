class ArticlesController < ApplicationController
    def create
        @article = Article.new
    end

end