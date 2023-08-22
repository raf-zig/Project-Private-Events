class EventAttendancesController < ApplicationController
  def new
    @eve = EventAttendance.new
  end

  def create
    @eve = EventAttendance.new(attended_event_id: params[:id], attendee_id: current_user.id)
    @eve.save
    
    if @eve.save
      redirect_to events_path
    else
      render :new, status: :unprocessable_entity
    end
  end
end
