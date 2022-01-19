class Family < ApplicationRecord
    has_many :genera, dependent: :destroy
    has_many :plants, through: :genera

    validates :name, presence: true
end
