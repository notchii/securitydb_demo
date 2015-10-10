class MemberApplicationsController < ApplicationController
  before_action :set_member_application, only: [:show, :edit, :update, :destroy, :acknowledge]
  # アクション実行時に権限認証を行う
  load_and_authorize_resource

  # GET /member_applications
  # GET /member_applications.json
  def index
    @member_applications = MemberApplication.all
    authorize! :read, MemberApplication
  end

  # GET /member_applications/1
  # GET /member_applications/1.json
  def show
  end

  # GET /member_applications/new
  def new
    @member_application = MemberApplication.new
    @partner_companies = PartnerCompany.all.order(name: :asc)
    @members = Member.existing
  end

  # GET /member_applications/1/edit
  def edit
    @partner_companies = PartnerCompany.all.order(name: :asc)
    @members = Member.existing
  end

  def acknowledge
    @partner_companies = PartnerCompany.all.order(name: :asc)
    @members = Member.existing
  end

  # POST /member_applications
  # POST /member_applications.json
  def create
    @member_application = MemberApplication.new(member_application_params)

    respond_to do |format|
      if @member_application.save
        format.html { redirect_to @member_application, notice: 'Member application was successfully created.' }
        format.json { render :show, status: :created, location: @member_application }
      else
        format.html { render :new }
        format.json { render json: @member_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_applications/1
  # PATCH/PUT /member_applications/1.json
  def update
    respond_to do |format|
      if @member_application.update(member_application_params)
        format.html { redirect_to @member_application, notice: 'Member application was successfully updated.' }
        format.json { render :show, status: :ok, location: @member_application }
      else
        format.html { render :edit }
        format.json { render json: @member_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_applications/1
  # DELETE /member_applications/1.json
  def destroy
    @member_application.destroy
    respond_to do |format|
      format.html { redirect_to member_applications_url, notice: 'Member application was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_application
      @member_application = MemberApplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_application_params
      params.require(:member_application).permit(:request_type, :status, :member_id, :last_name_kanji, :first_name_kanji, :last_name_kana, :first_name_kana, :last_name_romaji, :first_name_romaji, :project_name, :partner_company_id, :reconsignment_company_name, :leader_id, :administrator_id, :work_location, :passport_no, :email_address, :email_flg, :internet_flg, :global_id, :esd_email_address, :to_acknowedger, :to_applicant, :application_date, :applicant_id, :acknowledge_date, :acknowledge_id, :partner_flg)
    end
end
