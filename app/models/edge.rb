class Edge < ApplicationRecord
  belongs_to :from#, foreign_key: stop_id
  belongs_to :to#, foreign_key: stop_id
end
