class AttendancesController < ApplicationController
  before_action :get_event

  def index
    @attendances = @event.attendances
  end

  def new
    @attendance = Attendance.new
  end

  def create
    @attendance = @event.attendances.new(attendance_params)

    if @attendance.save
      render @event, status: :created
    else
      render @event, status: :unprocessable_entity
    end
  end

  def destroy
    @attendance = @event.attendances.find(params[:id])
    @attendance.destroy

    redirect_to event_path(@event), status: :see_other
    # render @event, status: :see_other
  end

  private

  def get_event
    @event = Event.find(params[:event_id])
  end

  def attendance_params
    params.require(:attendance).permit(:attendee_id, :event_id, :accepted_at)
  end
end
