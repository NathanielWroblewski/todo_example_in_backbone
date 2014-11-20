class Todo < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :urgency, presence: true
end
