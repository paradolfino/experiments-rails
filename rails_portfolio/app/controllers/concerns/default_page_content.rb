module DefaultPageContent
    extend ActiveRecord::Concern


    included do
        before_action :set_defaults
    end
  
    def set_defaults
        @page_title =  "Pagey Title"
    end
end