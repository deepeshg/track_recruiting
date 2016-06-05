class CreateFirms < ActiveRecord::Migration
  def change
    create_table :firms do |t|
      t.string :name
      t.string :industry
      t.string :on_campus
      t.string :location
      t.string :geography
      t.string :functional_fit
      t.string :industry_fit
      t.string :booth_alumni
      t.integer :firm_score
      t.text :notes

      t.timestamps

    end
  end
end
