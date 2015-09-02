json.array!(@months) do |month|
  json.extract! month, :id, :month_range, :phase
  json.url month_url(month, format: :json)
end
