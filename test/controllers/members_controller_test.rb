require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      post :create, member: { administrator_id: @member.administrator_id, email_address: @member.email_address, email_flg: @member.email_flg, esd_email_address: @member.esd_email_address, esd_internet_flg: @member.esd_internet_flg, existing_flg: @member.existing_flg, first_name_kana: @member.first_name_kana, first_name_kanji: @member.first_name_kanji, first_name_romaji: @member.first_name_romaji, global_id: @member.global_id, internet_flg: @member.internet_flg, last_name_kana: @member.last_name_kana, last_name_kanji: @member.last_name_kanji, last_name_romaji: @member.last_name_romaji, leader_id: @member.leader_id, partner_company_id: @member.partner_company_id, partner_flg: @member.partner_flg, passport_no: @member.passport_no, password: @member.password, production_terminal_room_pass: @member.production_terminal_room_pass, project_name: @member.project_name, reconsignment_company_name: @member.reconsignment_company_name, work_location: @member.work_location }
    end

    assert_redirected_to member_path(assigns(:member))
  end

  test "should show member" do
    get :show, id: @member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member
    assert_response :success
  end

  test "should update member" do
    patch :update, id: @member, member: { administrator_id: @member.administrator_id, email_address: @member.email_address, email_flg: @member.email_flg, esd_email_address: @member.esd_email_address, esd_internet_flg: @member.esd_internet_flg, existing_flg: @member.existing_flg, first_name_kana: @member.first_name_kana, first_name_kanji: @member.first_name_kanji, first_name_romaji: @member.first_name_romaji, global_id: @member.global_id, internet_flg: @member.internet_flg, last_name_kana: @member.last_name_kana, last_name_kanji: @member.last_name_kanji, last_name_romaji: @member.last_name_romaji, leader_id: @member.leader_id, partner_company_id: @member.partner_company_id, partner_flg: @member.partner_flg, passport_no: @member.passport_no, password: @member.password, production_terminal_room_pass: @member.production_terminal_room_pass, project_name: @member.project_name, reconsignment_company_name: @member.reconsignment_company_name, work_location: @member.work_location }
    assert_redirected_to member_path(assigns(:member))
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete :destroy, id: @member
    end

    assert_redirected_to members_path
  end
end
