require 'spec_helper'

module RimPrism
  class Page
    include Capybara::DSL
  end
end

class HomePage < SitePrism::Page

end

describe 'some test' do
  it 'tests a request', :js => true do
    # visit('http://google.com.au')
    @page = HomePage.new
  end
end