require 'test_helper'

class SubscriptorTest < ActiveSupport::TestCase
  test "Subscriptor should have a name" do
    @subscriptor = Subscriptor.new
    assert_not @subscriptor.save
  end

  test 'capitalize_name should return a subscriptor with name capitalized' do
    @subscriptor = Subscriptor.new(name: 'pedro')
    @subscriptor.capitalize_name
    assert_equal("Pedro",@subscriptor.name)
  end
end
