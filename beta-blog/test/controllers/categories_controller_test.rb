require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest

    test "should get categories index" do
        get :index
        assert_response :success
    end

    test "should get new" do
        get :new
        assert_response :success
    end

    test "should get show" do
        
    end

end