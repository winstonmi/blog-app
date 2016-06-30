json.array!(@gifts) do |gift|
  json.extract! gift, :id, :user_id, :title, :body
  json.url gift_url(gift, format: :json)
end
