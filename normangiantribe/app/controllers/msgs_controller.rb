class MsgsController < ApplicationController
    before_action :set_msg, only: [:edit,:update,:show,:destroy]
    def index
        @msgs = Msg.all
    end

    private
        def msg_params
            params.require(:msg).permit(:title, :body)
        end
        def set_msg
            @msg = msg.find(params[:id])
        end
end
