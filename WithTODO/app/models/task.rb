class Task < ApplicationRecord
  belongs_to :tasklist
  belongs_to :category
  has_one :taskschedule, dependent: :destroy

  validates :name, presence: true
  validates :category, presence: true
  validates :open, presence: true
  
end
