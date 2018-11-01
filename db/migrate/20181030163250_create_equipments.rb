class CreateEquipments < ActiveRecord::Migration[5.2]
  def change
    create_table :equipments do |t|
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
        t.string :property_jewelry_tag
        t.string :property_security_tag
        # t.references :roll_call
    end
  end
end
