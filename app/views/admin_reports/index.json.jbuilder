json.array!(@admin_reports) do |admin_report|
  json.extract! admin_report, :id, :number, :subject, :date_issued
  json.url admin_report_url(admin_report, format: :json)
end
