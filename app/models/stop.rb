class Stop < ApplicationRecord
  # belongs_to :line
  has_many :edges, dependent: :destroy # almost works,.. looks for edges.stop_id not edges.from_id
  # has_many :edges, dependent: :destroy, :foreign_key => 'to_id' # doenst work
  # has_many :edges, dependent: :destroy, :class_name => 'to_id' # doesnt work, sets name of column in stops
  has_many :trips

  # has_many :started_trips, :class_name => 'Trip', :foreign_key => 'start_id'
  # has_many :ended_trips, :class_name => 'Trip', :foreign_key => 'end_id'
end
