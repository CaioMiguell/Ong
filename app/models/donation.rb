class Donation < ApplicationRecord
  belongs_to :donor_type
  belongs_to :animal, optional: true
  validates :person, presence: true, length: { maximum: 128 }
  validates :amount, presence: true, length: { maximum: 128 }
end
