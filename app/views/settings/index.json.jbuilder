json.array!(@settings) do |setting|
  json.extract! setting, :id, :notification, :visibility
  json.url setting_url(setting, format: :json)
end
