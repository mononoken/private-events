class AddAcceptedAtToAttendees < ActiveRecord::Migration[7.0]
  def change
    add_column :attendees, :accepted_at, :datetime
  end
end
