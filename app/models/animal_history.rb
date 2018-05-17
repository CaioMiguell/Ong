class AnimalHistory < ApplicationRecord
  belongs_to :animal
  belongs_to :vet
end
