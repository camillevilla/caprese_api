class PomodoroTagsController < ApplicationController
  def index
    pomodorotags = PomodoroTag.all
    render json: {status: 'SUCCESS', message: 'Loaded all pomodorotags', data: pomodorotags}, status: :ok
  end

  def show
    pomodorotag = PomodoroTag.find(params[:id])
    render json: pomodorotag, status: :ok
  end

  def create
    @pomodorotag = PomodoroTag.new(pomodoro_tag_params)

    if @pomodorotag.save
      render json: @pomodorotag, status: :created, location: @pomodorotag
    else
      render json: @pomodorotag.errors, status: :unprocessable_entity
    end
  end

  def update
    if @pomodorotag.update(pomodoro_tag_params)
      render json: @pomodorotag
    else
      render json: @pomodorotag.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @pomodorotag.destroy
  end

  private

  def pomodoro_tag_params
    params.require(:pomodoro_tag).permit(:pomodoro_id, :tag_id)
  end
end
