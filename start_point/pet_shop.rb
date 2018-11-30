def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, number)
  pet_shop [:admin][:total_cash] += number
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
