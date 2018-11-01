class CreateRollCalls < ActiveRecord::Migration[5.2]
  def change
    create_table :roll_calls do |t|
      t.string :tour
      t.string :resource
      t.string :assignment
      t.string :rmp
      t.string :radio
      t.string :taser
      t.string :other_equip_1
      t.string :other_equip_2
      t.string :meal_period
      t.string :rings
      t.string :eot_sign_out
      t.string :roll_call_final
      t.string :color_of_the_day
      t.date :c_summons_return_date
      t.timestamp :created_at 
      t.timestamp :updated_at 
      # t.references :resource, :assignment, :equipments, :tour
    end
  end
end
