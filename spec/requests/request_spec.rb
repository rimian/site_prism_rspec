require 'spec_helper'

class HomePage < SitePrism::Page
  set_url "http://www.google.com"
  element :search_field, "input[name='q']"
  element :search_button, "button[name='btnG']"
  element :search_results, "div#search"
end

describe 'Google' do
  
  before(:each) do
    @page = HomePage.new
  end
  
  it 'has search results', :js => true do
    @page.load
    @page.search_field.set 'Hello world'
    @page.search_button.click()
    @page.wait_for_search_results
    @page.should have_search_results
  end
end