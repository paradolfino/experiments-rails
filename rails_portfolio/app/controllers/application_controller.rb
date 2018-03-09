class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent
  
  before_action :set_copyright

  def set_copyright
    @copyright = VolanderViewTool::Renderer.copyright "Viktharien Volander", "All Rights Reserved"
  end
end

module VolanderViewTool
  class Renderer
    def self.copyright name, msg
      "&copy; #{Time.now.year} | <strong>#{name}</strong> #{msg}".html_safe
    end
  end
end