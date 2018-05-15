class PomodorosController < ApplicationController
  before_action :get_record, only: [:update, :destroy, :show]

  def create
    @pomodoro = Pomodoro.create(pomodoro_params.except(:pauses))
    pomodoro_params[:pauses].each {|p| @pomodoro.pauses << Pause.create(p) }
    render json: @pomodoro.as_json(include: :pauses)
  end

  def update
    @pomodoro.update(pomodoro_params)
    render json: @pomodoro.as_json(include: :pauses)
  end

  def destroy
    @pomodoro.pauses.each {|p| p.destroy }
    @pomodoro.destroy
    render json: @pomodoro.as_json(include: :pauses)
  end

  def index
    render json: Pomodoro.all.order('created_at DESC').as_json(include: :pauses)
  end

  def show
    render json: @pomodoro.as_json(include: :pauses)
  end

  private
  def pomodoro_params
    params.require(:pomodoro).permit(
      :isPaused,
      :isStarted,
      :minutes,
      :pausedElapsed,
      :seconds,
      :secondsElapsed,
      :secondsRemaining,
      :timer,
      pauses: [:description, :seconds]
    )
  end

  def get_record
    @pomodoro = Pomodoro.find(params[:id])
  end
end
