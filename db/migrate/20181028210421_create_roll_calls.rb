class CreateRollCalls < ActiveRecord::Migration[5.2]
  def change
    create_table :roll_calls do |t|
      t.string :meal_period
      t.string :rings
      t.string :eot_sign_out
      t.string :roll_call_final
      t.string :color_of_the_day
      t.date :c_summons_return_date
      t.timestamp :created_at 
      t.timestamp :updated_at 
      t.references :resource, :assignment, :equipment, :tour
    end
  end
end
