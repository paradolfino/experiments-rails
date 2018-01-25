class MsgsController < ApplicationController
    before_action :set_msg, only: [:edit,:update,:show,:destroy]
    before_action :require_user
    before_action :require_same_user, only: [ :edit, :update, :destroy ]
    def index
        @msgs = Msg.all
    end

    def show

    end

    private
        def msg_params
            params.require(:msg).permit(:title, :body)
        end
        def set_msg
            @msg = msg.find(params[:id])
        end
        def require_same_user
            if current_user != @msg.user and !current_user.admin?
                flash[:danger] = "You can only edit your own messages!"
                redirect_to root_path
            end
        end
end
