class EventAttendancesController < ApplicationController
  def new
    @event_attendance = EventAttendance.new
  end

  def create
    @event_attendance = EventAttendance.new(attended_event_id: params[:id], attendee_id: current_user.id)
    @event_attendance.save
    
    if @event_attendance.save
      redirect_to "/events/#{@event_attendance.attended_event_id}"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @event_attendance = EventAttendance.find(params[:id])
    @event_attendance.destroy

    redirect_to "/users/#{current_user.id}"
  end
end
