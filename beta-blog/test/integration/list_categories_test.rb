require 'test_helper'

class ListCategoriesTest < ActionDispatch::IntegrationTest

    def setup
        @category = Category.create(name: "sports")
        @category2 = Category.create(name: "programming")
    end

    test "should show categories list" do
        get categories_path
    end

end