require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the anagram results path', {:type => :feature}) do
  it('returns anagram matches') do
    visit('/')
    fill_in('target', :with => 'I like cats')
    fill_in('arg1', :with => 'iekl')
    fill_in('arg2', :with => 'stac')
    fill_in('arg3', :with => 'asdf')
    click_button('Find Anagrams!')
    expect(page).to have_content("Anagram checker has deduced that the following are anagrams: like, cats")
  end
end
