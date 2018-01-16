class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            flash[:success] = "Welcome to Elfa Blog, #{@user.username}. "
            redirect_to articles_path
        else
            render 'new'
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        if @user.update(user_params)
            flash[:success] = "User was successfully updated"
            redirect_to user_path(@suser)
        else
            render 'edit'
        end
    end

    private
        def user_params
            params.require(:user).permit(:username, :email, :password)
        end
end
  