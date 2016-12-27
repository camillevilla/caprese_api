class PomodorosController < ApplicationController

  def index
    pomodoros = Pomodoro.all
    render json: {status: 'SUCCESS', message: 'Loaded all pomodoros', data: pomodoros}, status: :ok
  end

  def show
    pomodoro = Pomodoro.find(params[:id])
    render json: pomodoro, status: :ok
  end

  def create
    @pomodoro = Pomodoro.new(pomodoro_params)

    if @pomodoro.save
      render json: @pomodoro, status: :created, location: @pomodoro
    else
      render json: @pomodoro.errors, status: :unprocessable_entity
    end
  end

  def update
    if @pomodoro.update(pomodoro_params)
      render json: @pomodoro
    else
      render json: @pomodoro.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @pomodoro.destroy
  end

  private

  def pomodoro_params
    params.require(:pomodoro).permit(:user_id, :start_time, :end_time, :description)
  end
end
