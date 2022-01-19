class CommonName < ApplicationRecord
  belongs_to :plant, optional: true
end
