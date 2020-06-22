class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :start, class_name: "stop"
  belongs_to :end, class_name: "stop"

end
