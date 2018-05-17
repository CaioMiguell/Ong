class Address < ApplicationRecord
  has_many :vets, inverse_of: :address
end
