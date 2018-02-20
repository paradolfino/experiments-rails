module DefaultPageContent
    extend ActiveRecord::Concern


    included do
        before_action :set_title
    end
  
    def set_title
        @page_title =  "Pagey Title"
    end
end