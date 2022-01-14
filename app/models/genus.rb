class Genus < ApplicationRecord
  belongs_to :family
  has_many :plants
end
