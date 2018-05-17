json.extract! animal_history, :id, :date_ini, :animal_id, :vet_id, :note, :created_at, :updated_at
json.url animal_history_url(animal_history, format: :json)
