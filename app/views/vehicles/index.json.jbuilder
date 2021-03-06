json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :veh_reg_no, :category, :brand, :name, :photo, :daily_rate
  json.url vehicle_url(vehicle, format: :json)
end
