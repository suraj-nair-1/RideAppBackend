class CreatePeopleInEvents < ActiveRecord::Migration
  def change
    create_table :people_in_events do |t|
      t.integer :person_id
      t.integer :event_id
      t.boolean :is_admin

      t.timestamps null: false
    end
  end
end
