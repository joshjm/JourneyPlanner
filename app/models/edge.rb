class Edge < ApplicationRecord
  belongs_to :from, class_name: "Stop", foreign_key: "stop_id", optional: true
  belongs_to :to, class_name: "Stop", foreign_key: "stop_id", optional: true
end
