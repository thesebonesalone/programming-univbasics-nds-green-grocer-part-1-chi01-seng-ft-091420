def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  
  collection.each do |index|
    if index[:item] == name
      return index
    end
  end
  return nil

end

def consolidate_cart(cart)
  new_cart = []
  
  cart.each do |index|
    name = index[:item]
    duplicate = false
    new_cart.each do |index2|
      puts "looping"
      if index2[:item] == name
        puts index2[:count]
        duplicate = true
      end
    end
    if duplicate == false
      new_cart.push(index)
      puts new_cart[-1]
      new_cart[-1][:count => 1]
    end
  end
  return new_cart
end

  