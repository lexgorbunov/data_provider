require 'test_helper'
require 'generators/data_provider/provider_generator'

module DataProvider
  class DataProviderGeneratorTest < Rails::Generators::TestCase
    tests ProviderGenerator
    destination Rails.root.join('tmp/generators')
    setup :prepare_destination

    # test "generator runs without errors" do
    #   assert_nothing_raised do
    #     run_generator ["arguments"]
    #   end
    # end
  end
end
