require 'test_helper'

class HelloControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get hello_home_url
    assert_response :success
  end

  test "should get help" do
    get hello_help_url
    assert_response :success
  end

  test "should get about" do
    get hello_about_url
    assert_response :success
  end

end
