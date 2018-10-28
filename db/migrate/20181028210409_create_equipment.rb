class CreateEquipment < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment do |t|
      t.string :radio
      t.string :rmp
      t.string :van
      t.string :wagon
      t.string :scooter
      t.string :taser
      t.string :shield_long
      t.string :mace
      t.string :memo_book
      t.string :flares
      t.string :traffic_cone
      t.string :traffic_vest
      t.string :crime_scene_tape
      t.string :property_jewelry_tag
      t.string :property_security_tag
      t.timestamp :created_at 
      t.timestamp :updated_at 
      t.references :roll_call
    end
  end
end
