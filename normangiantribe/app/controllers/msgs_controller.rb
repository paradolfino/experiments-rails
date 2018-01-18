class MsgsController < ApplicationController
    def index
        @msgs = Msg.all
    end
end
