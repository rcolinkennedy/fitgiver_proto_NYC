json.array!(@settings) do |setting|
  json.extract! setting, :daily_email_updates, :sharing_default, :default_share_to_twitter
  json.url setting_url(setting, format: :json)
end
