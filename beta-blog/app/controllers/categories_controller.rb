class CategoriesController < ApplicationController
    def index
        @categories = Category.all
    end

    def new
        @category = Category.new
    end

    def show

    end

    def create
        @category = Category.new(params_category)
        if @category.save
            flash[:success] = "Category was created successfully"
            redirect_to categories_path
        else
            render 'new'
        end
    end

    private
        def params_category
            params.require(:category).permit(:name)
        end


end
  