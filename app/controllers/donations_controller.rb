class DonationsController < ApplicationController
  before_action :set_donation, only: %i[show edit update destroy]
  before_action :authenticate_user!
  # GET /donations
  # GET /donations.json
  def index
    @donations = Donation.all.page params[:page]
  end

  # GET /donations/1
  # GET /donations/1.json
  def show; end

  # GET /donations/new
  def new
    @donation = Donation.new
    @donations_type = DonorType.all
    @animales = Animal.all
  end

  # GET /donations/1/edit
  def edit; end

  # POST /donations
  # POST /donations.json
  def create
    @donation = Donation.new(donation_params)
    @donations_type = DonorType.all
    @animales = Animal.all
    respond_to do |format|
      if @donation.save
        format.html { redirect_to @donation, notice: t('messages.create.donation') }
        format.json { render :show, status: :created, location: @donation }
      else
        format.html { render :new }
        format.json { render json: @donation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donations/1
  # PATCH/PUT /donations/1.json
  def update
    respond_to do |format|
      if @donation.update(donation_params)
        format.html { redirect_to @donation, notice: t('messages.update.donation') }
        format.json { render :show, status: :ok, location: @donation }
      else
        format.html { render :edit }
        format.json { render json: @donation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donations/1
  # DELETE /donations/1.json
  def destroy
    @donation.destroy
    respond_to do |format|
      format.html { redirect_to donations_url, notice: t('messages.delete.donation') }
      format.json { head :no_content }
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def donation_params
    params.require(:donation).permit(:person, :donor_type_id, :amount, :animal_id)
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_donation
    @donation = Donation.find(params[:id])
  end
end
