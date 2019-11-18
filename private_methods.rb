#private methods are only used by other methods within a class. They cannot be called outside of the class (ie on instances of the class)

class Bartender
  attr_accessor :name
  BARTENDERS = []
 
  def initialize(name)
    @name = name
    BARTENDERS << self
  end
 
  def self.all
    BARTENDERS
  end
 
  def intro
    "Hello, my name is #{name}!"
  end
 
  def make_drink
    @cocktail_ingredients = []
    choose_liquor #You can call choose_liquor inside the class.
    choose_mixer
    choose_garnish
    return "Here is your drink. It contains #{@cocktail_ingredients}"
  end
  
  private #this lets the computer know the following methods are private, and cannot be called outside the class
 
  def choose_liquor
    @cocktail_ingredients.push("whiskey")
  end
 
  def choose_mixer
    @cocktail_ingredients.push("vermouth")
  end
 
  def choose_garnish
    @cocktail_ingredients.push("olives")
  end
 
end
phil = Bartender.new("Phil")
phil.choose_liquor #you get an error because you're trying to call choose_liquor outside the class