class Event < ApplicationRecord
  has_many   :event_attendances, foreign_key: :attended_event_id
  has_many   :attendees, through: :event_attendances
  belongs_to :creator, class_name: "User"

  scope :past_events, -> { where('date < ?', Date.today) }
  scope :future_events, -> { where('date >= ?', Date.today) }
end
