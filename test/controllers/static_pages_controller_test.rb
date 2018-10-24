require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get generateExam" do
    get static_pages_generateExam_url
    assert_response :success
  end

  test "should get addQuestion" do
    get static_pages_addQuestion_url
    assert_response :success
  end

  test "should get modifyQuestion" do
    get static_pages_modifyQuestion_url
    assert_response :success
  end

  test "should get myExams" do
    get static_pages_myExams_url
    assert_response :success
  end

end
