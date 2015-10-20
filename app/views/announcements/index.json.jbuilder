json.array!(@announcements) do |announcement|
  json.extract! announcement, :id, :title, :description, :user_id
  json.url announcement_url(announcement, format: :json)
end
