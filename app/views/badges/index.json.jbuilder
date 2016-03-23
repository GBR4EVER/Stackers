json.array!(@badges) do |badge|
  json.extract! badge, :id, :description
  json.url badge_url(badge, format: :json)
end
