class GaragesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get garages_url
    assert_response :success
  end
end
