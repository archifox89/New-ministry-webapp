json.array!(@reports) do |report|
  json.extract! report, :id, :number, :subject, :date_issued
  json.url report_url(report, format: :json)
end
