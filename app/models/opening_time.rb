class OpeningTime < ActiveRecord::Base
  # Building's hours of operation
  belongs_to :building
end
