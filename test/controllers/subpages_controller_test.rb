require 'test_helper'

class SubpagesControllerTest < ActionController::TestCase
  test "should get tasks" do
    get :tasks
    assert_response :success
  end

  test "should get vacations" do
    get :vacations
    assert_response :success
  end

  test "should get active" do
    get :active
    assert_response :success
  end

  test "should get presignature" do
    get :presignature
    assert_response :success
  end

  test "should get develop" do
    get :develop
    assert_response :success
  end

  test "should get proposed" do
    get :proposed
    assert_response :success
  end

  test "should get archive" do
    get :archive
    assert_response :success
  end

  test "should get presignature2" do
    get :presignature2
    assert_response :success
  end

  test "should get development2" do
    get :development2
    assert_response :success
  end

  test "should get phase1" do
    get :phase1
    assert_response :success
  end

  test "should get phase2" do
    get :phase2
    assert_response :success
  end

  test "should get phase3" do
    get :phase3
    assert_response :success
  end

  test "should get phase4" do
    get :phase4
    assert_response :success
  end

  test "should get proposed2" do
    get :proposed2
    assert_response :success
  end

end
