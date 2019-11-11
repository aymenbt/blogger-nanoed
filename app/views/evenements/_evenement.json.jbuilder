json.extract! evenement, :id, :name, :description, :start_time, :created_at, :updated_at
json.url evenement_url(evenement, format: :json)
