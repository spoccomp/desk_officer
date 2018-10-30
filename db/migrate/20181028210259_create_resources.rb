class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.string :first_name
      t.string :last_name
      t.integer :tax_id, limit: 6
      t.timestamp :created_at 
      t.timestamp :updated_at 
      t.references :rank
    end
  end
end
