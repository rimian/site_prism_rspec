require 'spec_helper'

class HomePage < SitePrism::Page
  set_url "http://www.google.com"
  element :search_field, "input[name='q']"
  element :search_button, "button[name='btnG']"
  element :search_results, "div#search"
end

describe 'some test' do
  
  before(:each) do
    @page = HomePage.new
  end
  
  it 'tests a request', :js => true do
    @page.load
    @page.search_field.set 'Hello world'
    @page.search_button.click()
    @page.search_results.should have_content('Hello world')
  end
end