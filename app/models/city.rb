class City < ApplicationRecord
  belongs_to :state
  has_many :posts
  has_many :events
end
