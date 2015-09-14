require 'test_helper'

class InteriorReportsControllerTest < ActionController::TestCase
  setup do
    @interior_report = interior_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interior_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interior_report" do
    assert_difference('InteriorReport.count') do
      post :create, interior_report: { date_issued: @interior_report.date_issued, number: @interior_report.number, subject: @interior_report.subject }
    end

    assert_redirected_to interior_report_path(assigns(:interior_report))
  end

  test "should show interior_report" do
    get :show, id: @interior_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interior_report
    assert_response :success
  end

  test "should update interior_report" do
    patch :update, id: @interior_report, interior_report: { date_issued: @interior_report.date_issued, number: @interior_report.number, subject: @interior_report.subject }
    assert_redirected_to interior_report_path(assigns(:interior_report))
  end

  test "should destroy interior_report" do
    assert_difference('InteriorReport.count', -1) do
      delete :destroy, id: @interior_report
    end

    assert_redirected_to interior_reports_path
  end
end
