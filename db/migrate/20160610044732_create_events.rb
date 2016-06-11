class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :firm_id
      t.integer :user_id
      t.text :notes
      t.datetime :time
      t.string :priority
      t.string :location
      t.string :event_type
      t.string :event_name
      t.boolean :past_event

      t.timestamps

    end
  end
end
