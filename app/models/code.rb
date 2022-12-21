class Code < ApplicationRecord
  validates :rating, numericality: { only_integer: true }
  validates_presence_of :problem_description
  validates_presence_of :title
end
