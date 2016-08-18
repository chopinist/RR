class AccessPermission < ActiveRecord::Base
  # Allow room acess only for certain users
  belongs_to :user
  belongs_to :room
end
