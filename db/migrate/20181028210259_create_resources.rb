class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.string :first_name
      t.string :last_name
      t.integer :tax_id, limit: 6
      t.timestamp :created_at 
      t.timestamp :updated_at 
      t.references :roll_call, :rank
    end
  end
end
