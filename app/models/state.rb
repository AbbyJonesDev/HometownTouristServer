class State < ApplicationRecord
  has_many :cities
  has_many :posts
  has_many :events
end
