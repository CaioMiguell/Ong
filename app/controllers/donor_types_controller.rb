class DonorTypesController < ApplicationController
  before_action :set_donor_type, only: %i[show edit update destroy]
  before_action :authenticate_user!
  # GET /donor_types
  # GET /donor_types.json
  def index
    @donor_types = DonorType.all.page params[:page]
  end

  # GET /donor_types/1
  # GET /donor_types/1.json
  def show; end

  # GET /donor_types/new
  def new
    @donor_type = DonorType.new
  end

  # GET /donor_types/1/edit
  def edit; end

  # POST /donor_types
  # POST /donor_types.json
  def create
    @donor_type = DonorType.new(donor_type_params)

    respond_to do |format|
      if @donor_type.save
        format.html { redirect_to @donor_type, notice: t('messages.create.donar_type') }
        format.json { render :show, status: :created, location: @donor_type }
      else
        format.html { render :new }
        format.json { render json: @donor_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donor_types/1
  # PATCH/PUT /donor_types/1.json
  def update
    respond_to do |format|
      if @donor_type.update(donor_type_params)
        format.html { redirect_to @donor_type, notice: t('messages.update.donar_type') }
        format.json { render :show, status: :ok, location: @donor_type }
      else
        format.html { render :edit }
        format.json { render json: @donor_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donor_types/1
  # DELETE /donor_types/1.json
  def destroy
    @donor_type.destroy
    respond_to do |format|
      format.html { redirect_to donor_types_url, notice: t('messages.delete.donar_type') }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_donor_type
    @donor_type = DonorType.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def donor_type_params
    params.require(:donor_type).permit(:name)
  end
end
