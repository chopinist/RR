class Reservation < ActiveRecord::Base
  # User's reservation of a room
  belongs_to :user
  belongs_to :room
end
