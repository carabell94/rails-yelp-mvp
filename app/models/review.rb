# how we generated this model from the terminal:
# rails g model Review content:text rating:integer restaurant:references

class Review < ApplicationRecord
  belongs_to :restaurant # the review must have a parent restaurant

  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: (0..5) }, numericality: { only_integer: true }
  # we use numericality to keep the rating as whole numbers
  # when a restaurant is destroyed, so should the reviews
end
