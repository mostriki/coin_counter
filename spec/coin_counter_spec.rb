
require('rspec')
require('coin')
require('pry')

describe('coin') do
  coin = Changemaker.new()

  it("takes user_input and returns a quarter denomination") do
    expect(coin.change(100)).to(eq(["4 quarters", "0 dimes", "0 nickels", "0 pennies"]))
  end

  it("takes user_input and returns a dime denomination") do
    expect(coin.change(10)).to(eq(["0 quarters", "1 dimes", "0 nickels", "0 pennies"]))
  end

  it("takes user_input and returns a nickel denomination") do
    expect(coin.change(5)).to(eq(["0 quarters", "0 dimes", "1 nickels", "0 pennies"]))
  end

  it("takes user_input and returns a penny denomination") do
    expect(coin.change(4)).to(eq(["0 quarters", "0 dimes", "0 nickels", "4 pennies"]))
  end
end
