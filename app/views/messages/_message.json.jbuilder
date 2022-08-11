json.extract! message, :id, :text, :user_id, :scheduled, :send_time, :status, :appointment_id, :created_at, :updated_at
json.url message_url(message, format: :json)
