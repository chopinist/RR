class AccessDenial < ActiveRecord::Base
  # Deny room access with date range and time range
  belongs_to :room
end
