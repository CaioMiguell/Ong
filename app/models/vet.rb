class Vet < ApplicationRecord
  belongs_to :address, optional: true, inverse_of: :vets
  accepts_nested_attributes_for :address
end
