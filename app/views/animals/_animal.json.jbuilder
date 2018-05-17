json.extract! animal, :id, :name, :image, :species, :breed, :note, :created_at, :updated_at
json.url animal_url(animal, format: :json)
