def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, new_cash)
  pet_shop[:admin][:total_cash] += new_cash
  return pet_shop[:admin][:total_cash]
end

# def add_or_remove_cash(pet_shop, number)
#   result = total_cash(pet_shop)
#   result += number
#   return result
# end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, new_sales)
  pet_shop[:admin][:pets_sold] += new_sales
  return pet_shop[:admin][:pets_sold]
end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed)
  breed_found = Array.new
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      breed_found.push(breed)
    end
  end
  return breed_found
end


#Both the below work, but only if there is only one pet called the given name.
#Can't work out how to continue looping even if given name if found.

# def find_pet_by_name(pet_shop, pet_name)
#   name_found = Array.new
#   for pet in pet_shop[:pets]
#     if pet[:name] == pet_name
#       name_found.push(pet)
#     end
#   end
#   return name_found[0]
# end


def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      pet_shop[:pets].delete(pet)
    end
  end
end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, amount)
  return customer[:cash] -= amount
end
