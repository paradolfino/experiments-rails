class PortfoliosController < ApplicationController
    before_action :set_portfolios, only: [:show, :edit, :update, :delete, :destroy]
    def index
        @portfolios = Portfolio.all
    end

    def new
        @portfolio = Portfolio.new
    end

    def create
        @portfolio = Portfolio.new(params_portfolio)

    end

    private

        def params_portfolio
            params.require(:portfolio).permit(:title, :body)
        end
end
