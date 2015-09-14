json.array!(@interior_reports) do |interior_report|
  json.extract! interior_report, :id, :number, :subject, :date_issued
  json.url interior_report_url(interior_report, format: :json)
end
