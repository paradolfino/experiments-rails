module SetSource
    included do

    end
    def set_source
        session[:source] = params[:q] if params[:q]
    end
end