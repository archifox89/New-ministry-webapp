json.array!(@interior_circulars) do |interior_circular|
  json.extract! interior_circular, :id, :number, :subject, :date_issued
  json.url interior_circular_url(interior_circular, format: :json)
end
