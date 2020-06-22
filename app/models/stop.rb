class Stop < ApplicationRecord
  # belongs_to :line
  has_many :edges

  # has_many :trips 
  has_many :started_trips, :class_name => 'Trip', :foreign_key => 'start_id'
  has_many :ended_trips, :class_name => 'Trip', :foreign_key => 'end_id'
end
