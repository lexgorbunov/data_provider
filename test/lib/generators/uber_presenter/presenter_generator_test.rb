require 'test_helper'
require 'generators/presenter/presenter_generator'

module UberPresenter
  class PresenterGeneratorTest < Rails::Generators::TestCase
    tests PresenterGenerator
    destination Rails.root.join('tmp/generators')
    setup :prepare_destination

    # test "generator runs without errors" do
    #   assert_nothing_raised do
    #     run_generator ["arguments"]
    #   end
    # end
  end
end
