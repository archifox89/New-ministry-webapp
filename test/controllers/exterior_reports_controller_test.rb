require 'test_helper'

class ExteriorReportsControllerTest < ActionController::TestCase
  setup do
    @exterior_report = exterior_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exterior_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exterior_report" do
    assert_difference('ExteriorReport.count') do
      post :create, exterior_report: { date_issued: @exterior_report.date_issued, number: @exterior_report.number, subject: @exterior_report.subject }
    end

    assert_redirected_to exterior_report_path(assigns(:exterior_report))
  end

  test "should show exterior_report" do
    get :show, id: @exterior_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exterior_report
    assert_response :success
  end

  test "should update exterior_report" do
    patch :update, id: @exterior_report, exterior_report: { date_issued: @exterior_report.date_issued, number: @exterior_report.number, subject: @exterior_report.subject }
    assert_redirected_to exterior_report_path(assigns(:exterior_report))
  end

  test "should destroy exterior_report" do
    assert_difference('ExteriorReport.count', -1) do
      delete :destroy, id: @exterior_report
    end

    assert_redirected_to exterior_reports_path
  end
end
