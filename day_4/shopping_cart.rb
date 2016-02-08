require 'pry'

module Pricing
  def get_prices
  {apple: 10, banana: 20, oranges: 5, grapes: 15, watermelon: 50}
  end
  def total_cost(items)
    print "Your final decision is this?   "
    items.reduce(0) {|sum, item| sum + self.get_prices[item]}   
  end
  def discounts(items)
    if items.length == 3
      discounted_prices = get_prices.each {|key, value| value = value/ 2}
      discounted_prices
      binding.pry
    end
    
  end
end


class ShoppingCart
  include Pricing
  def initialize
    @items = []
  end
  def add_item_to_cart(item)
    @items.push(item)
  end
  def show
    self.discounts(@items)
    @items.each {|item| puts "#{item}: #{self.get_prices[item]}$"}
  end
  def cost
    items = @items
    puts  self.total_cost(items)
  end

end

listprices = {apple: 10, banana: 20, oranges: 5, grapes: 15, watermelon: 50}

cart = ShoppingCart.new
cart.add_item_to_cart(:apple)
cart.add_item_to_cart(:banana)
cart.add_item_to_cart(:banana)

cart.show
cart.cost