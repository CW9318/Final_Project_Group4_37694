require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get instructor" do
    get pages_instructor_url
    assert_response :success
  end

  test "should get student" do
    get pages_student_url
    assert_response :success
  end
end
