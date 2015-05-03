require 'test_helper'
require 'action_controller/parameters'

class ParametersDeleteTest < ActiveSupport::TestCase

  test "Deleting an element from an array" do
    params = ActionController::Parameters.new({
      :book => ["The Coolest Story Ever Told"]
    })

    params[:book].delete "The Coolest Story Ever Told"
    assert_equal([], params[:book])
  end

end
