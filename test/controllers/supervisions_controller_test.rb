require "test_helper"

class SupervisionsControllerTest < ActionDispatch::IntegrationTest
  test "should get cars" do
    get supervisions_cars_url
    assert_response :success
  end

  test "should get stuffs" do
    get supervisions_stuffs_url
    assert_response :success
  end

  test "should get people" do
    get supervisions_people_url
    assert_response :success
  end

  test "should get division" do
    get supervisions_division_url
    assert_response :success
  end

  test "should get calls" do
    get supervisions_calls_url
    assert_response :success
  end
end
