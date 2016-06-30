json.array!(@gifts) do |gift|
  json.extract! gift, :id, :user_id, :gift_desc, :quantity, :recipient_name
  json.url gift_url(gift, format: :json)
end
