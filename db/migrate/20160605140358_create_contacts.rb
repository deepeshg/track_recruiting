class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.integer :firm_id
      t.string :email
      t.string :phone
      t.string :source
      t.text :notes

      t.timestamps

    end
  end
end
