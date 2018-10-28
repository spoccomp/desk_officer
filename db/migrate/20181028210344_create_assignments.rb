class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.string :foot_post
      t.string :sector_A
      t.string :sector_B
      t.string :sector_C
      t.string :sector_D
      t.string :station_house_clerk
      t.string :station_hourse_security
      t.string :telephone_switchboard_operator
      t.string :hospitalized_prisoner
      t.string :DOA
      t.string :prisoner_clerk
      t.string :EDP
      t.string :crime_scene
      t.string :special_post_A
      t.string :special_post_B
      t.string :special_post_C
      t.string :holiday_post_A
      t.string :holiday_post_B
      t.string :holiday_post_C
      t.string :desk_officer
      t.string :patrol_supervisor_1
      t.string :patrol_supervisor_2
      t.string :special_operations_supervisor
      t.string :commanding_officer
      t.string :executive_officer
      t.string :integrity_control_officer
      t.string :community_affairs_supervisor
      t.string :community_affairs_officer
      t.string :domestic_violence_officer
      t.string :street_crime_suppression_supervisor
      t.string :street_crime_suppression_officer
      t.timestamp :created_at 
      t.timestamp :updated_at 
      t.references :roll_call
    end
  end
end
