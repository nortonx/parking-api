class ParkingSpotsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get parking_spots_url
    assert_response :success
  end
end
