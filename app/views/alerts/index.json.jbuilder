json.array!(@alerts) do |alert|
  json.extract! alert, :id, :user_id, :event_id, :alert_time
  json.url alert_url(alert, format: :json)
end
