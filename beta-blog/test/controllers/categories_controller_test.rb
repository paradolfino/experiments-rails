require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest

    def setup
        @category = Category.create(name: "sports")
        @user = User.create(username: "joh", email: "joh@ttt.com", password: "password", admin: true)
        sign_in_as(@user,"password")
    end

    test "should get categories index" do
        get categories_path
        assert_response :success
    end

    test "should get new" do
        get new_category_path
        assert_response :success
    end

    test "should get show" do
        get category_path(@category)
        assert_response :success
    end

    test "should redirect create when admin not logged in" do
        assert_no_difference 'Category.count' do
            post categories_path, params: {category: {name: "sports"}}
        end

        assert_redirected_to categories_path
    end



end