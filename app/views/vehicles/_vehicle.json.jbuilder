json.extract! vehicle, :id, :vtr_number, :kind, :active, :licence_plate, :brand, :model, :owner, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
