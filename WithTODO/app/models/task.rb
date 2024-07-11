class Task < ApplicationRecord
  belongs_to :tasklist
  belongs_to :category
  has_one :taskschesule, dependent: :destroy

  varidates :name, presence: true
  validates :category, presence: true
  validates :open, presence: true
  
end
