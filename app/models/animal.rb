class Animal < ApplicationRecord
  mount_uploader :image, AnimalImageUploadUploader
  validates :name, presence: true, length: { maximum: 128 }
  validates :species, presence: true, length: { maximum: 128 }
  validates :breed, presence: true, length: { maximum: 68 }
  validates :note, presence: true, length: { maximum: 128 }
end
