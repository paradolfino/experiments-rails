class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def home
  end

  def noen
    @noen = params[:noen]
  end
end
