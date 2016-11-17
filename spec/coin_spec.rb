require('rspec')
require('pry')
require('coin')

describe ('Fixnum#coin') do
  it ("Will output the correct number of pennies") do
    expect(4.coin()).to(eq("0 quarters 0 dimes 0 nickels 4 pennies"))
  end

  it("Will output the correct number of nickels") do
    expect(9.coin()).to(eq("0 quarters 0 dimes 1 nickels 4 pennies"))
  end

  it("Will output the correct number of dimes") do
    expect(24.coin()).to(eq("0 quarters 2 dimes 0 nickels 4 pennies"))
  end

  it("Will output the correct number of quarters") do
    expect(79.coin()).to(eq("3 quarters 0 dimes 0 nickels 4 pennies"))
  end

end
