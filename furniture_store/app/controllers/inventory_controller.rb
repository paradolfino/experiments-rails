class InventoryController < ApplicationController
  def all_products
    @products = Product.all
  end

  def one_product
    @products = Product.first
  end

  def by_category
    @products = Product.where(category: "Alpha")
  end
end
