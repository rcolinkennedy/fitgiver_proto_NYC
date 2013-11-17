json.array!(@profiles) do |profile|
  json.extract! profile, :first_name, :last_name, :age, :date_joined
  json.url profile_url(profile, format: :json)
end
