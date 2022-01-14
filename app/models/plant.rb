class Plant < ApplicationRecord
  belongs_to :genus
  belongs_to :user
  delegate :family, :to => :genus
  has_many :synonyms
  has_many :common_names
  has_many :images
  has_and_belongs_to_many :light_reqts
  has_and_belongs_to_many :native_distributions
  has_and_belongs_to_many :foliage_colors
  has_and_belongs_to_many :flower_colors
end
