class Event < ApplicationRecord
  validates :name, :datetime, :location, presence: true
  validates :name, uniqueness: true

  belongs_to :creator, class_name: 'User', inverse_of: 'created_events'

  has_many :attendances, dependent: :destroy
  has_many :attendees, through: :attendances, inverse_of: 'attended_events'
end
