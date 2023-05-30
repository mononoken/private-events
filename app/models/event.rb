class Event < ApplicationRecord
  validates :name, :datetime, :location, presence: true
  validates :name, uniqueness: true

  belongs_to :creator, class_name: 'User'
  has_many :attendees, through: :attendees
end
