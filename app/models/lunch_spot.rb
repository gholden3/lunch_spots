class LunchSpot < ApplicationRecord
  validates_inclusion_of :rating, :in => 0..10, message: "must be between zero and ten"
end
