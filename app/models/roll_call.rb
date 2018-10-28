class RollCall < ApplicationRecord
    has_many :resources, :equipments, :assignments
    has_one :tour
end
