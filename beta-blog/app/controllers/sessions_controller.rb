class SessionsController < ApplicationController
    def new

    end

    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])

        else
            flash.now[:danger] = 'There was something wrong with your credentials.'
            render 'new'
        end
    end

    def destroy

    end

end
  