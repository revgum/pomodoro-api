require 'test_helper'

class PomodorosControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get pomodoros_create_url
    assert_response :success
  end

  test "should get update" do
    get pomodoros_update_url
    assert_response :success
  end

  test "should get destroy" do
    get pomodoros_destroy_url
    assert_response :success
  end

  test "should get index" do
    get pomodoros_index_url
    assert_response :success
  end

  test "should get show" do
    get pomodoros_show_url
    assert_response :success
  end

end
