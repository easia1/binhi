class Genus < ApplicationRecord
  belongs_to :family
  has_many :plants, dependent: :destroy

  validates :name, presence: true

  def name=(s)
    write_attribute(:name, s.to_s.capitalize) # The to_s is in case you get nil/non-string
  end
end
