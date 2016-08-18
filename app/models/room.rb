class Room < ActiveRecord::Base
  # Building's rooms
  # Serialization of :instruments column as an array
  serialize :instruments, Array
  belongs_to :building
  has_many :reservations, dependent: :destroy
  has_many :access_denials, dependent: :destroy
end
