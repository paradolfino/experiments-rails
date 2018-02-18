module CurrentUserConcern
    extend ActiveSupport::Concern

    def current_user
        super || OpenStruct.new(first_name: "Guest", last_name: "Guest", email: "guest@guest.com")
    end
end