class CarsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cars_url
    assert_response :success
  end
end
