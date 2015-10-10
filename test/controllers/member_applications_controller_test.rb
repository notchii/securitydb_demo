require 'test_helper'

class MemberApplicationsControllerTest < ActionController::TestCase
  setup do
    @member_application = member_applications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:member_applications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member_application" do
    assert_difference('MemberApplication.count') do
      post :create, member_application: { acknowledge_date: @member_application.acknowledge_date, acknowledge_id: @member_application.acknowledge_id, administrator_id: @member_application.administrator_id, applicant_id: @member_application.applicant_id, application_date: @member_application.application_date, email_address: @member_application.email_address, email_flg: @member_application.email_flg, esd_email_address: @member_application.esd_email_address, first_name_kana: @member_application.first_name_kana, first_name_kanji: @member_application.first_name_kanji, first_name_romaji: @member_application.first_name_romaji, global_id: @member_application.global_id, internet_flg: @member_application.internet_flg, last_name_kana: @member_application.last_name_kana, last_name_kanji: @member_application.last_name_kanji, last_name_romaji: @member_application.last_name_romaji, leader_id: @member_application.leader_id, member_id: @member_application.member_id, partner_company_id: @member_application.partner_company_id, passport_no: @member_application.passport_no, project_name: @member_application.project_name, reconsignment_company_name: @member_application.reconsignment_company_name, request_flg: @member_application.request_flg, status: @member_application.status, to_acknowedger: @member_application.to_acknowedger, to_applicant: @member_application.to_applicant, work_location: @member_application.work_location }
    end

    assert_redirected_to member_application_path(assigns(:member_application))
  end

  test "should show member_application" do
    get :show, id: @member_application
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member_application
    assert_response :success
  end

  test "should update member_application" do
    patch :update, id: @member_application, member_application: { acknowledge_date: @member_application.acknowledge_date, acknowledge_id: @member_application.acknowledge_id, administrator_id: @member_application.administrator_id, applicant_id: @member_application.applicant_id, application_date: @member_application.application_date, email_address: @member_application.email_address, email_flg: @member_application.email_flg, esd_email_address: @member_application.esd_email_address, first_name_kana: @member_application.first_name_kana, first_name_kanji: @member_application.first_name_kanji, first_name_romaji: @member_application.first_name_romaji, global_id: @member_application.global_id, internet_flg: @member_application.internet_flg, last_name_kana: @member_application.last_name_kana, last_name_kanji: @member_application.last_name_kanji, last_name_romaji: @member_application.last_name_romaji, leader_id: @member_application.leader_id, member_id: @member_application.member_id, partner_company_id: @member_application.partner_company_id, passport_no: @member_application.passport_no, project_name: @member_application.project_name, reconsignment_company_name: @member_application.reconsignment_company_name, request_flg: @member_application.request_flg, status: @member_application.status, to_acknowedger: @member_application.to_acknowedger, to_applicant: @member_application.to_applicant, work_location: @member_application.work_location }
    assert_redirected_to member_application_path(assigns(:member_application))
  end

  test "should destroy member_application" do
    assert_difference('MemberApplication.count', -1) do
      delete :destroy, id: @member_application
    end

    assert_redirected_to member_applications_path
  end
end
