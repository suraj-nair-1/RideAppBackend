class CreateDrivingInstances < ActiveRecord::Migration
  def change
    create_table :driving_instances do |t|
      t.integer :driver_id
      t.integer :num_seats
      t.string :comments
      t.integer :event_id

      t.timestamps null: false
    end
  end
end
