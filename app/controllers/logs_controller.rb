class LogsController < ApplicationController
  def index
    @log = Log.new
    @logs = Log.all
  end

  def new
    @log = Log.new(user_id: current_user.id)
  end

  def create
    @log = Log.new(log_with_user_params)
    if @log.save
      flash[:success] = "Started #{log_params[:description]}"
    else
      flash[:error] = "Error starting #{log_params[:description]}"
    end

    redirect_to root_path
  end

  private

  def log_params
    params.require(:log).permit(:start_at, :end_at, :description)
  end

  def log_with_user_params
    log_params.merge(user_id: current_user.id)
  end
end
