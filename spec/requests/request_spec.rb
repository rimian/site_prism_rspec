require 'spec_helper'

module RimPrism
  class Page
    include Capybara::DSL
  end
end

class HomePage < RimPrism::Page

end

describe 'some test' do
  it 'tests a request' do
    @page = HomePage.new
  end
end