class Category < ApplicationRecord
  has_many :inventory
  has_many :tasks
end
