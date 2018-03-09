class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent
  
end

module VolanderViewTool
  class Renderer
    def self.copyright

    end
  end
end