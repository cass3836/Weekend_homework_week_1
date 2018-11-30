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
