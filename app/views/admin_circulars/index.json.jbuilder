json.array!(@admin_circulars) do |admin_circular|
  json.extract! admin_circular, :id, :number, :subject, :date_issued
  json.url admin_circular_url(admin_circular, format: :json)
end
