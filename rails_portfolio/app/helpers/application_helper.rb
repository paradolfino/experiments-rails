module ApplicationHelper

    def login_helper
        if !current_user.is_a?(OpenStruct) 
            link_to "Logout", destroy_user_session_path, method: :delete 
        else 
            "#{(link_to "Login", new_user_session_path)} <br/> #{(link_to "Sign Up", new_user_registration_path)}".html_safe
        end 
    end

    def source_helper(layout_name)
        if session[:source]
            content_tag(:p, "Tak for visiter mig fran #{session[:source]}", class: "source-greeting")
        end

    end
end
