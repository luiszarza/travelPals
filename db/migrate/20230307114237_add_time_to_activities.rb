class AddTimeToActivities < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :time, :datetime
  end
end
