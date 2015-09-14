json.array!(@ministry_reports) do |ministry_report|
  json.extract! ministry_report, :id, :number, :subject, :date_issued
  json.url ministry_report_url(ministry_report, format: :json)
end
