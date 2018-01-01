class ArticlesController < ApplicationController
    def new
        @article = Article.new
    end
    def create
        @article = Article.new(params[:article])

        @article.save
        redirect_to @article
    end

    private
        def article_params
            params.require(:article).permit(:title, :text)
        end
        def set_article
            @article = Article.find(params[:id])
        end
end