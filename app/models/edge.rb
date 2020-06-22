class Edge < ApplicationRecord
  belongs_to :from, class_name: "Stop"
  belongs_to :to, class_name: "Stop"
end
