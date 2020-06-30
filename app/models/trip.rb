class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :start, class_name: "Stop", foreign_key: "stop_id", optional: true
  belongs_to :end, class_name: "Stop", foreign_key: "stop_id", optional: true

end
