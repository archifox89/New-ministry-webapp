json.array!(@experiences) do |experience|
  json.extract! experience, :id, :company, :period_of_employment, :title
  json.url experience_url(experience, format: :json)
end
