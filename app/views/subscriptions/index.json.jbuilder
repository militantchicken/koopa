json.array!(@subscriptions) do |subscription|
  json.extract! subscription, :id, :user_id, :subscription_name
  json.url subscription_url(subscription, format: :json)
end
