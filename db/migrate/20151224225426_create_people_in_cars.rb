class CreatePeopleInCars < ActiveRecord::Migration
  def change
    create_table :people_in_cars do |t|
      t.integer :person_id
      t.integer :driver_id
      t.integer :event_id

      t.timestamps null: false
    end
  end
end
