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
        assert_not @category.valid?
    end

    test "name should be unique" do
        @category.save
        category2 = Category.new(name: "sports")
        assert_not category2.valid?
    end

    test "name should not be too long" do
        @category.name = "a" * 27
        assert_not @category.valid?
    end

    test "name should not be too short" do

    end
end