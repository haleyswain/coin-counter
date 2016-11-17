class Fixnum
  define_method(:coin) do
    amount = self
    penny_counter = 0
    nickel_counter = 0
    dime_counter = 0
    quarter_counter = 0
    until amount == 0
      if amount <= 4
        amount -= 1
        penny_counter += 1
      elsif amount <= 9
        amount -= 5
        nickel_counter += 1
      elsif amount <= 24
        amount -= 10
        dime_counter += 1
      else
        amount -= 25
        quarter_counter += 1
      end
    end
    quarter_counter.to_s + " quarters " + dime_counter.to_s + " dimes " + nickel_counter.to_s + " nickels " + penny_counter.to_s + " pennies"
  end
end
