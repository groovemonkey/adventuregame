class Player
  attr_accessor :currentlocation
  
  @currentlocation = "start"
  @inventory = {}
  
  
  def change_location(newlocation)
    @currentlocation = Locations[newlocation]
  end
  
  
  def add_to_inventory(item)
    @inventory[item] = true
  end
  
  
  def remove_from_inventory(item)
    @inventory[item] = false
  end
  
  
end
