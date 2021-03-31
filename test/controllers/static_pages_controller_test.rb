require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get about" do
    get about_url
    assert_response :success
    assert_select "title", "Sobre | AMT - OPERACIONAL"
  end

end
