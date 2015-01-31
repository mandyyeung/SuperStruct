json.array!(@statuses) do |status|
  json.extract! status, :id, :filter, :description
  json.url status_url(status, format: :json)
end
