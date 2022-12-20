class Code < ApplicationRecord
  validates_presence_of :rating
  validates_presence_of :problem_description
end
