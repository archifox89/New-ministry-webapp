require 'test_helper'

class MinistryReportsControllerTest < ActionController::TestCase
  setup do
    @ministry_report = ministry_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ministry_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ministry_report" do
    assert_difference('MinistryReport.count') do
      post :create, ministry_report: { date_issued: @ministry_report.date_issued, number: @ministry_report.number, subject: @ministry_report.subject }
    end

    assert_redirected_to ministry_report_path(assigns(:ministry_report))
  end

  test "should show ministry_report" do
    get :show, id: @ministry_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ministry_report
    assert_response :success
  end

  test "should update ministry_report" do
    patch :update, id: @ministry_report, ministry_report: { date_issued: @ministry_report.date_issued, number: @ministry_report.number, subject: @ministry_report.subject }
    assert_redirected_to ministry_report_path(assigns(:ministry_report))
  end

  test "should destroy ministry_report" do
    assert_difference('MinistryReport.count', -1) do
      delete :destroy, id: @ministry_report
    end

    assert_redirected_to ministry_reports_path
  end
end
