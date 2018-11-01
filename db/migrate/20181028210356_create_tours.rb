class CreateTours < ActiveRecord::Migration[5.2]
  def change
    create_table :tours do |t|
      t.string :tour
      t.timestamp :created_at 
      t.timestamp :updated_at
      # t.references :roll_call 
    end
  end
end
