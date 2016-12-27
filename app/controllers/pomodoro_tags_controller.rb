class PomodoroTagsController < ApplicationController
  def index
    pomodorotags = PomodoroTag.all
    if tag_id = params[:tag_id]
      pomodorotags = PomodoroTag.where(tag_id: tag_id)
    elsif pomodoro_id = params[:pomodoro_id]
      pomodorotags = PomodoroTag.where(pomodoro_id: pomodoro_id)
    end
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
