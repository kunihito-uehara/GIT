class KunisController < ApplicationController
  before_action :set_kuni, only: %i[ show edit update destroy ]

  # GET /kunis or /kunis.json
  def index
    @kunis = Kuni.all
  end

  # GET /kunis/1 or /kunis/1.json
  def show
  end

  # GET /kunis/new
  def new
    @kuni = Kuni.new
  end

  # GET /kunis/1/edit
  def edit
  end

  # POST /kunis or /kunis.json
  def create
    @kuni = Kuni.new(kuni_params)

    respond_to do |format|
      if @kuni.save
        format.html { redirect_to @kuni, notice: "Kuni was successfully created." }
        format.json { render :show, status: :created, location: @kuni }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kuni.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kunis/1 or /kunis/1.json
  def update
    respond_to do |format|
      if @kuni.update(kuni_params)
        format.html { redirect_to @kuni, notice: "Kuni was successfully updated." }
        format.json { render :show, status: :ok, location: @kuni }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kuni.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kunis/1 or /kunis/1.json
  def destroy
    @kuni.destroy
    respond_to do |format|
      format.html { redirect_to kunis_url, notice: "Kuni was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kuni
      @kuni = Kuni.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kuni_params
      params.require(:kuni).permit(:content)
    end
end
