class Event < ApplicationRecord
  belongs_to :author
  belongs_to :city
  belongs_to :state
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :events
end
