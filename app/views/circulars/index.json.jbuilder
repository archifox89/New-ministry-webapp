json.array!(@circulars) do |circular|
  json.extract! circular, :id, :number, :subject, :date_issued
  json.url circular_url(circular, format: :json)
end
