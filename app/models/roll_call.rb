class RollCall < ApplicationRecord
     
     has_one :tour, :assignments, :equipments, :resources
end
