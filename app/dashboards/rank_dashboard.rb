require "administrate/base_dashboard"

class RankDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    police_officer: Field::String,
    sergeant: Field::String,
    lieutenant: Field::String,
    captain: Field::String,
    detective_1: Field::String,
    detective_2: Field::String,
    detective_3: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    resources_id: Field::Number,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :police_officer,
    :sergeant,
    :lieutenant,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :police_officer,
    :sergeant,
    :lieutenant,
    :captain,
    :detective_1,
    :detective_2,
    :detective_3,
    :created_at,
    :updated_at,
    :resources_id,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :police_officer,
    :sergeant,
    :lieutenant,
    :captain,
    :detective_1,
    :detective_2,
    :detective_3,
    :resources_id,
  ].freeze

  # Overwrite this method to customize how ranks are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(rank)
  #   "Rank ##{rank.id}"
  # end
end
