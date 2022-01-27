class Plant < ApplicationRecord
  include ActiveModel::Validations

  belongs_to :genus
  belongs_to :user
  delegate :family, :to => :genus
  has_many :synonyms, dependent: :destroy
  has_many :common_names, dependent: :destroy
  has_many :images, dependent: :destroy
  has_and_belongs_to_many :light_reqts
  has_and_belongs_to_many :foliage_colors
  has_and_belongs_to_many :flower_colors

  accepts_nested_attributes_for :common_names, allow_destroy: true, reject_if: proc { |att| att['name'].blank? }
  accepts_nested_attributes_for :synonyms, allow_destroy: true, reject_if: proc { |att| att['genus'].blank? }
  accepts_nested_attributes_for :images, allow_destroy: true, reject_if: proc { |att| att['file_path'].blank? }
  validates :common_names, :nested_attributes_uniqueness => {:field => :name}

  # ransack_alias :species, :specific_epithet_or_grex_or_infraspecies_name_or_cultivar_group_or_cultivar
  # ransack_alias :common, :common_names_name
  # ransack_alias :syn, :synonyms_genus_or_synonyms_specific_epithet_or_synonyms_grex_or_synonyms_infraspecies_name_or_synonyms_cultivar_group_or_synonyms_cultivar
  # ransack_alias :genus, :genus_name


  def genus_name=(name)
    self.genus = Genus.find_or_create_by(name: name)
  end

  def genus_name
    self.genus ? self.genus.name : nil
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
