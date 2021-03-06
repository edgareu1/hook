json.extract! @location,
  :id,
  :spot

json.address do
  json.extract! @location,
    :city,
    :state,
    :country,
    :country_code

  json.coordinates do
    json.lat @location.latitude
    json.long @location.longitude
  end
end

json.stats do
  json.num_logs @location.logs_count

  json.fish_caught do
    json.num @location.catches_count
    json.weight_gr @location.catches_weight
  end
end

json.current_weather do
  json.icon @current_weather[:weather_icon]
  json.description @current_weather[:weather_description]
  json.extract! @current_weather,
    :temperature,
    :air_pressure,
    :wind_speed,
    :moon_phase
end

json.instance_info do
  json.extract! @location,
    :created_at,
    :updated_at
end
