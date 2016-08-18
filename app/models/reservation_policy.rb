class ReservationPolicy < ActiveRecord::Base
  # The policy enforced on users while they reserve rooms
  # Serialization of :apply_on column as an array
  serialize :apply_on, Array
  enum enforced_by: [:default, :instrument, :study_programme, :user]
end
