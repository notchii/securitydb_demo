require 'test_helper'

class PartnerCompaniesControllerTest < ActionController::TestCase
  setup do
    @partner_company = partner_companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:partner_companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create partner_company" do
    assert_difference('PartnerCompany.count') do
      post :create, partner_company: { name: @partner_company.name }
    end

    assert_redirected_to partner_company_path(assigns(:partner_company))
  end

  test "should show partner_company" do
    get :show, id: @partner_company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @partner_company
    assert_response :success
  end

  test "should update partner_company" do
    patch :update, id: @partner_company, partner_company: { name: @partner_company.name }
    assert_redirected_to partner_company_path(assigns(:partner_company))
  end

  test "should destroy partner_company" do
    assert_difference('PartnerCompany.count', -1) do
      delete :destroy, id: @partner_company
    end

    assert_redirected_to partner_companies_path
  end
end
