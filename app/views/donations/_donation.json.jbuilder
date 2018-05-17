json.extract! donation, :id, :person, :donor_type_id, :amount, :animal_id, :created_at, :updated_at
json.url donation_url(donation, format: :json)
