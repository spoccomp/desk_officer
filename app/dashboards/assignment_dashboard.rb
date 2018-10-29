require "administrate/base_dashboard"

class AssignmentDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    foot_post: Field::String,
    sector_A: Field::String,
    sector_B: Field::String,
    sector_C: Field::String,
    sector_D: Field::String,
    station_house_clerk: Field::String,
    station_hourse_security: Field::String,
    telephone_switchboard_operator: Field::String,
    hospitalized_prisoner: Field::String,
    DOA: Field::String,
    prisoner_clerk: Field::String,
    EDP: Field::String,
    crime_scene: Field::String,
    special_post_A: Field::String,
    special_post_B: Field::String,
    special_post_C: Field::String,
    holiday_post_A: Field::String,
    holiday_post_B: Field::String,
    holiday_post_C: Field::String,
    desk_officer: Field::String,
    patrol_supervisor_1: Field::String,
    patrol_supervisor_2: Field::String,
    special_operations_supervisor: Field::String,
    commanding_officer: Field::String,
    executive_officer: Field::String,
    integrity_control_officer: Field::String,
    community_affairs_supervisor: Field::String,
    community_affairs_officer: Field::String,
    domestic_violence_officer: Field::String,
    street_crime_suppression_supervisor: Field::String,
    street_crime_suppression_officer: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    roll_call_id: Field::Number,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :foot_post,
    :sector_A,
    :sector_B,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :foot_post,
    :sector_A,
    :sector_B,
    :sector_C,
    :sector_D,
    :station_house_clerk,
    :station_hourse_security,
    :telephone_switchboard_operator,
    :hospitalized_prisoner,
    :DOA,
    :prisoner_clerk,
    :EDP,
    :crime_scene,
    :special_post_A,
    :special_post_B,
    :special_post_C,
    :holiday_post_A,
    :holiday_post_B,
    :holiday_post_C,
    :desk_officer,
    :patrol_supervisor_1,
    :patrol_supervisor_2,
    :special_operations_supervisor,
    :commanding_officer,
    :executive_officer,
    :integrity_control_officer,
    :community_affairs_supervisor,
    :community_affairs_officer,
    :domestic_violence_officer,
    :street_crime_suppression_supervisor,
    :street_crime_suppression_officer,
    :created_at,
    :updated_at,
    :roll_call_id,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :foot_post,
    :sector_A,
    :sector_B,
    :sector_C,
    :sector_D,
    :station_house_clerk,
    :station_hourse_security,
    :telephone_switchboard_operator,
    :hospitalized_prisoner,
    :DOA,
    :prisoner_clerk,
    :EDP,
    :crime_scene,
    :special_post_A,
    :special_post_B,
    :special_post_C,
    :holiday_post_A,
    :holiday_post_B,
    :holiday_post_C,
    :desk_officer,
    :patrol_supervisor_1,
    :patrol_supervisor_2,
    :special_operations_supervisor,
    :commanding_officer,
    :executive_officer,
    :integrity_control_officer,
    :community_affairs_supervisor,
    :community_affairs_officer,
    :domestic_violence_officer,
    :street_crime_suppression_supervisor,
    :street_crime_suppression_officer,
    :roll_call_id,
  ].freeze

  # Overwrite this method to customize how assignments are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(assignment)
  #   "Assignment ##{assignment.id}"
  # end
end
