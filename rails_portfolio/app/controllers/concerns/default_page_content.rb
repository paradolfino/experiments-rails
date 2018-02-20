module DefaultPageContent
    extend ActiveRecord::Concern


    
    before_action :set_title
  
    def set_title
        @page_title =  "Pagey Title"
    end
end