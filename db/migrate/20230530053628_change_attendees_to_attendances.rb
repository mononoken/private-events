class ChangeAttendeesToAttendances < ActiveRecord::Migration[7.0]
  def change
    rename_table :attendees, :attendances
  end
end
