class Plant < ApplicationRecord
  belongs_to :user
  has_many :images

  validates :sci_name, presence: true
end
