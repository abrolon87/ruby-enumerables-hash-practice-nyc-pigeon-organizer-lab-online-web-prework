def nyc_pigeon_organizer(pigeon_data)
  new_hash = {}

  pigeon_data.each do |key, value|
    value.each do |new_value, names|
      names.each do |name|

        if !new_hash[name]
          new_hash[name] = {}
        end

        if !new_hash[name][key]
          new_hash[name][key] = []
        end

        new_hash[name][key] << new_value.to_s

      end
    end
  end
  new_hash


end
