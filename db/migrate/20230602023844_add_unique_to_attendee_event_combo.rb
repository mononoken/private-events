class AddUniqueToAttendeeEventCombo < ActiveRecord::Migration[7.0]
  def change
    add_index :attendances, %i[attendee_id event_id], unique: true
  end
end
