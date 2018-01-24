require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
    def setup
        @category = Category.new(name: "sports")
    end

    test "category should be valid" do
        #assertion
        assert @category.valid?
    end

    test "name should be present" do
        assert_not @category.valid
    end
end