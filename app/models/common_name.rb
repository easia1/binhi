class CommonName < ApplicationRecord
  belongs_to :plant, optional: true

  def name=(s)
    write_attribute(:name, s.to_s.capitalize) # The to_s is in case you get nil/non-string
  end  
end
