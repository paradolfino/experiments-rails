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

    private
        def params_category
            params.require(:category).permit(:name)
        end


end
  