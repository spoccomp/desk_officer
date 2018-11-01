class CreateRanks < ActiveRecord::Migration[5.2]
  def change
    create_table :ranks do |t|
      t.string :police_officer
      t.string :sergeant
      t.string :lieutenant
      t.string :captain
      t.string :detective_1
      t.string :detective_2
      t.string :detective_3
      t.timestamp :created_at 
      t.timestamp :updated_at 
      # t.references :resources
    end
  end
end
