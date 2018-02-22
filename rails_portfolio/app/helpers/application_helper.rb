module ApplicationHelper
    def sample_helper
        "<p>My Helper</p>".html_safe
    end

    def login_helper
        if !current_user.is_a?(OpenStruct) 
            link_to "Logout", destroy_user_session_path, method: :delete 
        else 
            "#{(link_to "Login", new_user_session_path)} <br/>
            #{(link_to "Sign Up", new_user_registration_path)}" 
        end 
    end
end
