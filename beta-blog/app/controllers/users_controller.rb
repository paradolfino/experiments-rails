class UsersController < ApplicationController
    before_action :set_user, only: [:edit,:update,:show]
    before_action :require_user, except: [:index, :show ]
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

    end

    def update
        if @user.update(user_params)
            flash[:success] = "User was successfully updated"
            render 'edit'
        else
            render 'edit'
        end
    end

    def show
        
        @articles = @user.articles.paginate(page: params[:page], per_page: 5)
    end

    def index
        @users = User.paginate(page: params[:page], per_page: 5)
        
    end

    private
        def user_params
            params.require(:user).permit(:username, :email, :password)
        end
        def set_user
            @user = User.find(params[:id])
        end
end
  