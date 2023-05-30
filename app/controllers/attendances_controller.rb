class AttendancesController < ApplicationController
  def index
    @attendances = Attendance.all
  end

  def new
    @attendance = Attendance.new
  end

  def create
    # @attendance = current_user.attended_events.build(attendance_params)

    if @attendance.save
      redirect_to current_user.attended_events.last
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy; end

  private

  def attendance_params
    params.require(:attendance).permit(:accepted_at)
  end
end
