json.array!(@projects) do |project|
  json.extract! project, :id, :title, :description, :status, :phase, :location, :created_at, :updated_at
  json.url project_url(project, format: :json)
end

