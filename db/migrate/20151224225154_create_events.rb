class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :event_id
      t.timestamp :date
      t.string :name
      t.string :location_name
      t.string :address
      t.string :city
      t.string :description

      t.timestamps null: false
    end
  end
end
