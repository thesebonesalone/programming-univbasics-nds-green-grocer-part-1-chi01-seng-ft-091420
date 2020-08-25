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
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  new_cart = []
  
  cart.each do |index|
    name = index[:item]
    duplicate = false
    new_cart.each do |index2|
      if index2[:item] == name
       puts index2[:count]
        duplicate = true
      end
      if duplicate == false
        new_cart[new_cart.length] = index
        new_cart[new_cart.length -1][:count => 1]
      end
    end
    return new_cart
  end
  
  

end


  