require "administrate/base_dashboard"

class TourDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    tour_1: Field::String,
    tour_2: Field::String,
    tour_3: Field::String,
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
    :tour_1,
    :tour_2,
    :tour_3,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :tour_1,
    :tour_2,
    :tour_3,
    :created_at,
    :updated_at,
    :roll_call_id,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :tour_1,
    :tour_2,
    :tour_3,
    :roll_call_id,
  ].freeze

  # Overwrite this method to customize how tours are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(tour)
  #   "Tour ##{tour.id}"
  # end
end
