class Edge < ApplicationRecord
  belongs_to :from, class_name: "Stop" #, foreign_key: stop_id
  belongs_to :to, class_name: "Stop" #, foreign_key: stop_id
end
