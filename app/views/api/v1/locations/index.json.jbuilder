json.array! @locations do |location|
  json.extract! location, :id, :spot
  json.address location.name

  json.stats do
    json.num_logs location.logs_count

    json.fish_caught do
      json.num location.catches_count
      json.weight_gr location.catches_weight
    end
  end
end
