class PortfoliosController < ApplicationController
    def index
        @portfolios = Portfolio.all
    end

    def new

    end

    def create

    end
end
