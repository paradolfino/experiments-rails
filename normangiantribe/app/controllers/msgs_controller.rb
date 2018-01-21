class MsgsController < ApplicationController
    before_action :set_msg, only: [:edit,:update,:show,:destroy]
    before_action :require_user, except: [:index, :show ]
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
end
