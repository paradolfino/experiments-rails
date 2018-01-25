class CategoriesController < ApplicationController
    def index

    end

    def new
        @category = Category.new
    end

    def show

    end

    def create
        @category = Category.new(params_category)
        if @category.save

        else
            render 'new'
        end
    end


end
  