class PortfoliosController < ApplicationController
    before_action :set_portfolios, only: [:show, :edit, :update, :destroy]
    layout 'portfolio'
    def index
        @portfolios = Portfolio.all
        @page_title = "Blog"
        #@portfolios = Portfolio.subwoofer #Portfolio.where(subtitle: "Subwoofer")
    end

    def subwoofer
        @portfolios = Portfolio.subwoofer
    end

    def show; end

    def new
        @portfolio = Portfolio.new
        2.times { @portfolio.technologies.build }
    end

    def create
        @portfolio = Portfolio.new(params_portfolio)
        if @portfolio.save
            flash[:success] = "Portfolio Item was successfully created"
            puts @portfolio
            redirect_to portfolios_path
        else
            render 'new'
        end

    end

    def edit; end

    def update
        if @portfolio.update(params_portfolio)
            flash[:success] = "Portfolio Item was successfully updated!"
            redirect_to portfolio_path(@portfolio)
        else
            render 'edit'
        end
    end

    def destroy
        @portfolio.destroy
        flash[:danger] = "Portfolio was successfully deleted."
        redirect_to portfolios_path
    end


    private
        def set_portfolios
            @portfolio = Portfolio.friendly.find(params[:id])
        end
        def params_portfolio
            params.require(:portfolio).permit(
                :title, 
                :subtitle, 
                :body, 
                technologies_attributes: [:name])
        end
end
