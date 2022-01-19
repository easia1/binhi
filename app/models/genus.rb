class Genus < ApplicationRecord
  belongs_to :family
  has_many :plants, dependent: :destroy

  validates :name, presence: true
end
