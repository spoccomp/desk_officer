require "administrate/base_dashboard"

class EquipmentDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    radio: Field::String,
    rmp: Field::String,
    van: Field::String,
    wagon: Field::String,
    scooter: Field::String,
    taser: Field::String,
    shield_long: Field::String,
    mace: Field::String,
    memo_book: Field::String,
    flares: Field::String,
    traffic_cone: Field::String,
    traffic_vest: Field::String,
    crime_scene_tape: Field::String,
    property_jewelry_tag: Field::String,
    property_security_tag: Field::String,
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
    :radio,
    :rmp,
    :van,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :radio,
    :rmp,
    :van,
    :wagon,
    :scooter,
    :taser,
    :shield_long,
    :mace,
    :memo_book,
    :flares,
    :traffic_cone,
    :traffic_vest,
    :crime_scene_tape,
    :property_jewelry_tag,
    :property_security_tag,
    :created_at,
    :updated_at,
    :roll_call_id,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :radio,
    :rmp,
    :van,
    :wagon,
    :scooter,
    :taser,
    :shield_long,
    :mace,
    :memo_book,
    :flares,
    :traffic_cone,
    :traffic_vest,
    :crime_scene_tape,
    :property_jewelry_tag,
    :property_security_tag,
    :roll_call_id,
  ].freeze

  # Overwrite this method to customize how equipment are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(equipment)
  #   "Equipment ##{equipment.id}"
  # end
end
