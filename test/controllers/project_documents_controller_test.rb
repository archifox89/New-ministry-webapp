require 'test_helper'

class ProjectDocumentsControllerTest < ActionController::TestCase
  test "should get predesign" do
    get :predesign
    assert_response :success
  end

  test "should get design" do
    get :design
    assert_response :success
  end

  test "should get tendering" do
    get :tendering
    assert_response :success
  end

  test "should get construction" do
    get :construction
    assert_response :success
  end

end
