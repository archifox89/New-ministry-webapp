require 'test_helper'

class AdminCircularsControllerTest < ActionController::TestCase
  setup do
    @admin_circular = admin_circulars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_circulars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_circular" do
    assert_difference('AdminCircular.count') do
      post :create, admin_circular: { date_issued: @admin_circular.date_issued, number: @admin_circular.number, subject: @admin_circular.subject }
    end

    assert_redirected_to admin_circular_path(assigns(:admin_circular))
  end

  test "should show admin_circular" do
    get :show, id: @admin_circular
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_circular
    assert_response :success
  end

  test "should update admin_circular" do
    patch :update, id: @admin_circular, admin_circular: { date_issued: @admin_circular.date_issued, number: @admin_circular.number, subject: @admin_circular.subject }
    assert_redirected_to admin_circular_path(assigns(:admin_circular))
  end

  test "should destroy admin_circular" do
    assert_difference('AdminCircular.count', -1) do
      delete :destroy, id: @admin_circular
    end

    assert_redirected_to admin_circulars_path
  end
end
