require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the change combination path', {:type => :feature}) do
  it('processes the amount of change and outputs it in coins') do
    visit('/')
    fill_in('change', :with => "64")
    click_button('Submit')
    expect(page).to have_content('2 quarters 1 dimes 0 nickels 4 pennies')
  end
end
