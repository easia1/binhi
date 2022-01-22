class FoliageColor < ApplicationRecord
    has_and_belongs_to_many :plants

    def color=(s)
        write_attribute(:color, s.to_s.titleize) # The to_s is in case you get nil/non-string
    end
end

blue moon
Blue Moon
