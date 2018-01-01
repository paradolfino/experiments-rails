class ArticlesController < ApplicationController
    def new
        @article = Article.new
    end
    def create
        @article = Article.new(article_params)

        @article.save
        redirect_to @article
    end

    def show
        @article = Article.find(params[:id])
    end

    def index

    end

    private
        def article_params
            params.require(:article).permit(:title, :text)
        end
        def set_article
            @article = Article.find(params[:id])
        end
end