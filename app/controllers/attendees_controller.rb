class AttendeesController < ApplicationController
  def index
    @attendees = Attendee.all
  end

  def new
    @attendee = Attendee.new
  end

  def create
    @attendee = current_user.attended_events.build(attendee_params)

    if @attendee.save
      redirect_to current_user.attended_events.last
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def attendee_params
    params.require(:attendee).permit(:accepted_at)
  end
end
