json.array!(@statuses) do |status|
  json.extract! status, :id, :status_update, :status_title
  json.url status_url(status, format: :json)
end
