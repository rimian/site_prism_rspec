require 'spec_helper'

describe 'some test' do
  it 'tests a request', :js => true do
    visit('http://google.com')
  end
end