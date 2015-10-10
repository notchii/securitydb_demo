class MembersController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update, :destroy]
  # アクション実行時に権限認証を行う
  load_and_authorize_resource

  # GET /members
  # GET /members.json
  def index
    @members = Member.all
  end

  # GET /members/1
  # GET /members/1.json
  def show
  end

  # GET /members/new
  def new
    @member = Member.new
    @partner_companies = PartnerCompany.all.order(name: :asc)
  end

  # GET /members/1/edit
  def edit
    @partner_companies = PartnerCompany.all.order(name: :asc)
  end

  # POST /members
  # POST /members.json
  def create
    @member = Member.new(member_params)

    respond_to do |format|
      if @member.save
        format.html { redirect_to @member, notice: 'Member was successfully created.' }
        format.json { render :show, status: :created, location: @member }
      else
        format.html { render :new }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /members/1
  # PATCH/PUT /members/1.json
  def update
    respond_to do |format|
      if @member.update(member_params)
        format.html { redirect_to @member, notice: 'Member was successfully updated.' }
        format.json { render :show, status: :ok, location: @member }
      else
        format.html { render :edit }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /members/1
  # DELETE /members/1.json
  def destroy
    @member.destroy
    respond_to do |format|
      format.html { redirect_to members_url, notice: 'Member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params
      params.require(:member).permit(:password, :last_name_kanji, :first_name_kanji, :last_name_kana, :first_name_kana, :last_name_romaji, :first_name_romaji, :deleted_flg, :partner_flg, :passport_no, :email_address, :global_id, :production_terminal_room_pass, :esd_email_address, :esd_internet_flg, :internet_flg, :email_flg, :partner_company_id, :leader_id, :project_name, :administrator_id, :work_location, :reconsignment_company_name)
    end
end
