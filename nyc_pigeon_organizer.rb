require 'pry'

def nyc_pigeon_organizer(data)
  pigeons = {}
  
  data.each do |attribute, attribute_details|
    attribute_details.each do |detail, names|
      names.each do |name|
        if pigeons.keys.include?(name)
          # if pigeons[name][attribute]
          #   pigeons[name][attribute] << detail
          # else
          #   pigeons[name][attribute] = [detail]
          # end
        else
          pigeons[name] = {attribute => detail}
        end
      end
    end
  end
  
  binding.pry
  pigeons
end