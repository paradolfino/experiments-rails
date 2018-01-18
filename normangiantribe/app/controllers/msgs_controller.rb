class MsgsController < ApplicationController
    before_action :set_post, only: [:edit,:update,:show,:destroy]
    def index
        @msgs = Msg.all
    end

    private
        def post_params
            params.require(:post).permit(:title, :body)
        end
        def set_post
            @post = Post.find(params[:id])
        end
end
