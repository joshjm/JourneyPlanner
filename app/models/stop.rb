class Stop < ApplicationRecord
  # belongs_to :line
  # has_many :edges # almost works,.. looks for edges.stop_id not edges.from_id
  has_many :edge_from, class_name: "Edge", dependent: :destroy, foreign_key: "from_id"
  has_many :edge_to, class_name: "Edge", dependent: :destroy, foreign_key: "to_id"
  # has_many :edges, dependent: :destroy, :class_name => 'to_id' # doesnt work, sets name of column in stops
  has_many :trips_to, class_name: "Trip", dependent: :destroy, foreign_key: "end_id"
  has_many :trips_from, class_name: "Trip", dependent: :destroy, foreign_key: "start_id"

  # has_many :started_trips, :class_name => 'Trip', :foreign_key => 'start_id'
  # has_many :ended_trips, :class_name => 'Trip', :foreign_key => 'end_id'
end
