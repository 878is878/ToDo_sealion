class Todo < ApplicationRecord
  belongs_to :user
  has_one :foodlog

  validates :name, presence: true
  validates :user_id, presence: true

end
