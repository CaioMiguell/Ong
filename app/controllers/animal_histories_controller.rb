class AnimalHistoriesController < ApplicationController
  before_action :set_animal_history, only: %i[show edit update destroy]
  before_action :authenticate_user!
  # GET /animal_histories
  # GET /animal_histories.json
  def index
    @animal_histories = AnimalHistory.all.page params[:page]
  end

  # GET /animal_histories/1
  # GET /animal_histories/1.json
  def show; end

  # GET /animal_histories/new
  def new
    @animal_history = AnimalHistory.new
    @animals = Animal.all
    @vets = Vet.all
  end

  # GET /animal_histories/1/edit
  def edit
    @animals = Animal.all
    @vets = Vet.all
  end

  # POST /animal_histories
  # POST /animal_histories.json
  def create
    @animal_history = AnimalHistory.new(animal_history_params)

    respond_to do |format|
      if @animal_history.save
        format.html { redirect_to @animal_history, notice: t('messages.create.animal_history') }
        format.json { render :show, status: :created, location: @animal_history }
      else
        format.html { render :new }
        format.json { render json: @animal_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animal_histories/1
  # PATCH/PUT /animal_histories/1.json
  def update
    respond_to do |format|
      if @animal_history.update(animal_history_params)
        format.html { redirect_to @animal_history, notice: t('messages.update.animal_history') }
        format.json { render :show, status: :ok, location: @animal_history }
      else
        format.html { render :edit }
        format.json { render json: @animal_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animal_histories/1
  # DELETE /animal_histories/1.json
  def destroy
    @animal_history.destroy
    respond_to do |format|
      format.html { redirect_to animal_histories_url, notice: t('messages.delete.animal_history') }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_animal_history
    @animal_history = AnimalHistory.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def animal_history_params
    params.require(:animal_history).permit(:date_ini, :animal_id, :vet_id, :note)
  end
end
