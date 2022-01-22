class Family < ApplicationRecord
    has_many :genera, dependent: :destroy
    has_many :plants, through: :genera

    validates :name, presence: true, uniqueness: true

    def name=(s)
        write_attribute(:name, s.to_s.capitalize) # The to_s is in case you get nil/non-string
    end
end
