require "administrate/base_dashboard"

class RollCallDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    meal_period: Field::String,
    rings: Field::String,
    eot_sign_out: Field::String,
    roll_call_final: Field::String,
    color_of_the_day: Field::String,
    c_summons_return_date: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    resource_id: Field::Number,
    assignment_id: Field::Number,
    equipment_id: Field::Number,
    tour_id: Field::Number,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :meal_period,
    :rings,
    :eot_sign_out,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :meal_period,
    :rings,
    :eot_sign_out,
    :roll_call_final,
    :color_of_the_day,
    :c_summons_return_date,
    :created_at,
    :updated_at,
    :resource_id,
    :assignment_id,
    :equipment_id,
    :tour_id,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :meal_period,
    :rings,
    :eot_sign_out,
    :roll_call_final,
    :color_of_the_day,
    :c_summons_return_date,
    :resource_id,
    :assignment_id,
    :equipment_id,
    :tour_id,
  ].freeze

  # Overwrite this method to customize how roll calls are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(roll_call)
  #   "RollCall ##{roll_call.id}"
  # end
end
