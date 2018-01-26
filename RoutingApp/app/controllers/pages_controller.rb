class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def home
  end

  def something
    @noen = params[:noen]
  end
end
