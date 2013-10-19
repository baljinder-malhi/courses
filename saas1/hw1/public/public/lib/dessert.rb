class Dessert

  attr_accessor :name, :calories

  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  
  def healthy?
    return @calories < 200? true : false
  end
  
  def delicious?
    return true
  end
end

class JellyBean < Dessert

  attr_accessor :flavor

  def initialize(flavor)
    @flavor = flavor
    @calories = 5
    @name = flavor + " " + @@name    
  end
 
  def delicious?
    return @flavor == "licorice" ? false : true
  end

  @@name = "jelly bean"   

end
