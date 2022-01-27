json.plants do
    json.array!(@plants) do |plant|
        json.name plant.specific_epithet
    end
end