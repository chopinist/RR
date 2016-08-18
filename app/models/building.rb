class Building < ActiveRecord::Base
  # Institue's building
  has_many :rooms, dependent: :destroy
  has_many :hours_of_operations, dependent: :destroy
end
