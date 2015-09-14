require 'test_helper'

class InteriorCircularsControllerTest < ActionController::TestCase
  setup do
    @interior_circular = interior_circulars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interior_circulars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interior_circular" do
    assert_difference('InteriorCircular.count') do
      post :create, interior_circular: { date_issued: @interior_circular.date_issued, number: @interior_circular.number, subject: @interior_circular.subject }
    end

    assert_redirected_to interior_circular_path(assigns(:interior_circular))
  end

  test "should show interior_circular" do
    get :show, id: @interior_circular
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interior_circular
    assert_response :success
  end

  test "should update interior_circular" do
    patch :update, id: @interior_circular, interior_circular: { date_issued: @interior_circular.date_issued, number: @interior_circular.number, subject: @interior_circular.subject }
    assert_redirected_to interior_circular_path(assigns(:interior_circular))
  end

  test "should destroy interior_circular" do
    assert_difference('InteriorCircular.count', -1) do
      delete :destroy, id: @interior_circular
    end

    assert_redirected_to interior_circulars_path
  end
end
