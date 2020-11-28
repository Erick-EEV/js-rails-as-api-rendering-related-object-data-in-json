class CreateSightings < ActiveRecord::Migration[5.2]
  def change
    create_table :sightings do |t|
      t.integer "bird_id"
      t.integer "location_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.references :bird, foreign_key: true
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
