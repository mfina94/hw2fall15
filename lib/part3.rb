class Dessert

  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  
  attr_accessor :name
  attr_accessor :calories
  
  def healthy?
    if calories < 200 
      return true
    end
    return false
  end
  
  def delicious?
    return true
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    @name = name
    @calories = calories
    @flavor = flavor
  end
  
  attr_accessor :flavor
  
  def delicious?
    if flavor.to_s == "black licorice"
      return false
    else
      return true
    end
  end
end
