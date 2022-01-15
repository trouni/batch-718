class PlantTag < ApplicationRecord
  belongs_to :plant
  belongs_to :tag

  validates :tag, uniqueness: { scope: :plant }
  # validates :plant, uniqueness: { scope: :tag }
end
