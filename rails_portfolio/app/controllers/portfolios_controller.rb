class PortfoliosController < ApplicationController
    before_action :set_portfolios, only: [:show, :edit, :update, :delete, :destroy]
    def index
        @portfolios = Portfolio.all
    end

    def show

    end

    def new
        @portfolio = Portfolio.new
    end

    def create
        @portfolio = Portfolio.new(params_portfolio)
        if @portfolio.save
            flash[:success] = "Portfolio Item was successfully created"
            redirect_to portfolios_path
        else
            render 'new'
        end

    end

    def edit

    end

    def update
        if @portfolio.save
            flash[:success] = "Portfolio Item was successfully updated!"
            redirect_to portfolios_path
        else
            render 'new'
        end
    end



    private

        def params_portfolio
            params.require(:portfolio).permit(:title, :body)
        end
end
