require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest

    test "should get categories index" do
        get categories_path
        assert_response :success
    end

    test "should get new" do
        get new_category_path
        assert_response :success
    end

    test "should get show" do
        get category_path
        assert_response :success
    end

end