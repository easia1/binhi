class LightReqt < ApplicationRecord
    has_and_belongs_to_many :plants

    def light_reqt=(s)
        write_attribute(:light_reqt, s.to_s.titleize) # The to_s is in case you get nil/non-string
    end
end
