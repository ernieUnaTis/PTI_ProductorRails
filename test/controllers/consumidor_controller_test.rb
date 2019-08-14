require 'test_helper'

class ConsumidorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get consumidor_index_url
    assert_response :success
  end

end
