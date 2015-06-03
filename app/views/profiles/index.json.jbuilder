json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :civil, :email, :level, :employment_date, :mobile, :folder, :title, :internal, :nationality, :vacation, :work_email, :experience
  json.url profile_url(profile, format: :json)
end
