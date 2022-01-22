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
  accepts_nested_attributes_for :synonyms, allow_destroy: true, reject_if: proc { |att| att['genus'].blank? || att['specific_epithet'].blank? || att['grex'].blank? || att['infraspecies_unit'].blank? || att['infraspecies_name'].blank? || att['cultivar_group'].blank? || att['cultivar'].blank? || att['hybrid'].blank?}

  validates :common_names, :nested_attributes_uniqueness => {:field => :name}



  def genus_name=(name)
    self.genus = Genus.find_or_create_by(name: name)
  end

  def genus_name
    self.genus ? self.genus.name : nil
  end

  def water_reqts=(s)
    write_attribute(:water_reqts, s.to_s.titleize) # The to_s is in case you get nil/non-string
  end

end
