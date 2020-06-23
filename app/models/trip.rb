class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :start, class_name: "Stop"
  belongs_to :end, class_name: "Stop"

end
