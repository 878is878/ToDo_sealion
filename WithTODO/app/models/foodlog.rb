class Foodlog < ApplicationRecord
  belongs_to :user
  belongs_to :todo
  belongs_to :category
end
