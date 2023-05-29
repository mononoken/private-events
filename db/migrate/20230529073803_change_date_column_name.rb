class ChangeDateColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :events, :date, :datetime
  end
end
