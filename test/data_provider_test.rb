require 'test_helper'

class DataProviderTest < ActiveSupport::TestCase
  test 'truth' do
    assert_kind_of Module, DataProvider
  end
end
