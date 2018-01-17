class ThreadsController < ApplicationController
    before_action :set_thread, only: [:edit,:update,:show,:destroy]
    def index
        @threads = thread.all
    end

    def new
        @thread = thread.new
    end

    def edit
        
    end

    def create
        #render plain: params[:thread].inspect
        @thread = thread.new(thread_params)
        if @thread.save
            flash[:success] = "thread was successfully created"
            redirect_to thread_path(@thread)
        else
            render 'new'
        end
    end

    def show
        @thread = thread.find(params[:id])
    end

    private
        def thread_params
            params.require(:thread).permit(:title, :body)
        end
        def set_thread
            @thread = thread.find(params[:id])
        end
end
