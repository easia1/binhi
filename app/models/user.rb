class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :profile_image, ImgUploader

  devise :database_authenticatable, :registerable,
        :rememberable, :validatable

  validates :name, :username, :occupation, presence: true
  has_many :plants

  def name=(s)
    write_attribute(:name, s.to_s.titleize) # The to_s is in case you get nil/non-string
  end

end
