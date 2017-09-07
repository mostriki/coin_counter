class Changemaker
  def coin_counter(user_input)
    money = user_input

    quarter = 0
    dime = 0
    nickel = 0
    penny = 0

    until(money < 25)
      quarter += 1
      money -= 25
    end
    until(money < 10)
      dime += 1
      money -= 10
    end
    until(money < 5)
      nickel += 1
      money -= 5
    end
    until(money < 1)
      penny += 1
      money -= 1
    end
    [quarter.to_s + " quarters", dime.to_s + " dimes", nickel.to_s + " nickels", penny.to_s + " pennies"]
  end
end
