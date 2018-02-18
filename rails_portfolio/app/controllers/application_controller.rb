class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include DeviseWhitelist
  include SetSource

  def current_user
    super #exact same behavior of parent current_user
  end
  
end
