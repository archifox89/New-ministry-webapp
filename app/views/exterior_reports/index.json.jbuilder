json.array!(@exterior_reports) do |exterior_report|
  json.extract! exterior_report, :id, :number, :subject, :date_issued
  json.url exterior_report_url(exterior_report, format: :json)
end
