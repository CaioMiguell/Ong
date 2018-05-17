class DonorType < ApplicationRecord
  validates :name, presence: true, length: { maximum: 68 }
end
