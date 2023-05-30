class Attendee < ApplicationRecord
  validates :attendee_id, :event_id, :accepted_at, presence: true

  belongs_to :attendee, class_name: 'User'
  belongs_to :event
end
