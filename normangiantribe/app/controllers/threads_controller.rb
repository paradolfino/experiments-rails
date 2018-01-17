class ThreadsController < ApplicationController
    before_action :set_thread, only: [:edit,:update,:show,:destroy]
    def index
        @threads = Thread.all
    end

    def new
        @thread = Thread.new
    end

    def edit
        
    end

    def create
        #render plain: params[:thread].inspect
        @thread = Thread.new(thread_params)
        if @thread.save
            flash[:success] = "thread was successfully created"
            redirect_to thread_path(@thread)
        else
            render 'new'
        end
    end

    def show
        @thread = Thread.find(params[:id])
    end

    private
        def thread_params
            params.require(:thread).permit(:title, :body)
        end
        def set_thread
            @thread = Thread.find(params[:id])
        end
end
