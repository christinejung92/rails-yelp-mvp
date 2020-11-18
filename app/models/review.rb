class Review < ApplicationRecord
  TYPES = [1,2,3,4,5]
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true, inclusion: {in:0..5}, numericality: {only_integer: true}
end

