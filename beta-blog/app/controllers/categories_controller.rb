class CategoriesController < ApplicationController
    before_action :set_category, only: [:create]
    def index

    end

    def new
        @category = Category.new
    end

    def show

    end

    def create
        
    end
end
  