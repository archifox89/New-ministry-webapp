json.array!(@vacations) do |vacation|
  json.extract! vacation, :id, :type, :start_date, :end_date
  json.url vacation_url(vacation, format: :json)
end
