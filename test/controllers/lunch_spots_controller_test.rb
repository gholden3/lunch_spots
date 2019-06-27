require 'test_helper'

class LunchSpotsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lunch_spots_index_url
    assert_response :success
  end

  test "should get update" do
    get lunch_spots_update_url
    assert_response :success
  end

  test "should get create" do
    get lunch_spots_create_url
    assert_response :success
  end

end
