json.extract! appointment, :id, :name, :description, :start_time, :end_time, :day, :user_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
