class Synonym < ApplicationRecord
  belongs_to :plant, optional: true


  def genus=(s)
    write_attribute(:genus, s.to_s.capitalize) # The to_s is in case you get nil/non-string
    end

  def specific_epithet=(s)
    write_attribute(:specific_epithet, s.to_s.downcase) # The to_s is in case you get nil/non-string
  end

  def infraspecies_unit=(s)
    write_attribute(:infraspecies_unit, s.to_s.downcase) # The to_s is in case you get nil/non-string
  end

  def infraspecies_name=(s)
    write_attribute(:infraspecies_name, s.to_s.downcase) # The to_s is in case you get nil/non-string
  end

  def hybrid=(s)
    write_attribute(:hybrid, s.to_s.downcase) # The to_s is in case you get nil/non-string
  end


  def water_reqts=(s)
    write_attribute(:water_reqts, s.to_s.capitalize) # The to_s is in case you get nil/non-string
  end

  def grex=(s)
    write_attribute(:grex, s.to_s.titleize) # The to_s is in case you get nil/non-string
  end

  def cultivar_group=(s)
    write_attribute(:cultivar_group, s.to_s.titleize) # The to_s is in case you get nil/non-string
  end

  def cultivar=(s)
    write_attribute(:cultivar, s.to_s.titleize) # The to_s is in case you get nil/non-string
  end

end
