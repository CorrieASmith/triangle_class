require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the user input converted into a type of triangle', {:type => :feature}) do
  it('processes the user entry and returns it in type of triangle') do
  visit('/')
  fill_in('side1', :with => '6')
  fill_in('side2', :with => '6')
  fill_in('side3', :with => '6')
  click_button('Go!')
  expect(page).to have_content("It is an equilateral triangle!")
  end
end
