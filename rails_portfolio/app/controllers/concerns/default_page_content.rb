module DefaultPageContent
    extend ActiveSupport::Concern


    included do
        before_action :set_defaults
    end
  
    def set_defaults
        @page_title =  "Pagey Title"

        @seo_keywords = "Viktharien Volander"
    end
end