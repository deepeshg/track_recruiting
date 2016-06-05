class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.integer :contact_id
      t.date :date
      t.text :notes
      t.string :follow_up
      t.datetime :follow_up_time
      t.string :priority

      t.timestamps

    end
  end
end
