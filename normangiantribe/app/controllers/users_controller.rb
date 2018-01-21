class UsersController < ApplicationController
    before_action :set_user, only: [:edit,:update,:show, :destroy]

        def new
            @user = User.new
        end
    
        def create
            @user = User.new(user_params)
            if @user.save
                flash[:success] = "Welcome to The Normangian Tribe, #{@user.username}. "
                redirect_to user_path(@user)
            else
                render 'new'
            end
        end
    
        def edit

        end
    
        def update
            if @user.update(user_params)
                flash[:success] = "User was successfully updated"
                redirect_to user_path(@user)
            else
                render 'edit'
            end
        end
    
        def show
            @msgs = @user.msgs
        end
    
        def index
            @users = User.all
        end
    
        private
            def user_params
                params.require(:user).permit(:username, :email, :password)
            end
            def set_user
                @user = User.find(params[:id])
            end
            def require_same_user
                if current_user != @user and !current_user.admin?
                    flash[:danger] = "You can only edit yourself!"
                    redirect_to root_path
                end
            end
            def require_admin
                if logged_in? and !current_user.admin?
                    flash[:danger] = "You need elevated permissions to do that!"
                    redirect_to root_path
                end
            end
      
end
