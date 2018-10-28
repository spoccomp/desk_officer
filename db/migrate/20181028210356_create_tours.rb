class CreateTours < ActiveRecord::Migration[5.2]
  def change
    create_table :tours do |t|
      t.string :tour_1
      t.string :tour_2
      t.string :tour_3
      t.timestamp :created_at 
      t.timestamp :updated_at
      t.references :roll_call 
    end
  end
end
