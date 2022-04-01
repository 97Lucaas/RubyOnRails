class AnnivsController < ApplicationController
  before_action :set_anniv, only: %i[ show edit update destroy ]

  # GET /annivs or /annivs.json
  def index
    @annivs = Anniv.all
  end

  # GET /annivs/1 or /annivs/1.json
  def show
  end

  # GET /annivs/new
  def new
    @anniv = Anniv.new
  end

  # GET /annivs/1/edit
  def edit
  end

  # POST /annivs or /annivs.json
  def create
    @anniv = Anniv.new(anniv_params)

    respond_to do |format|
      if @anniv.save
        format.html { redirect_to anniv_url(@anniv), notice: "L'anniversaire à bien été créé !." }
        format.json { render :show, status: :created, location: @anniv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @anniv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /annivs/1 or /annivs/1.json
  def update
    respond_to do |format|
      if @anniv.update(anniv_params)
        format.html { redirect_to anniv_url(@anniv), notice: "L'anniversaire à bien été édité." }
        format.json { render :show, status: :ok, location: @anniv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @anniv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /annivs/1 or /annivs/1.json
  def destroy
    @anniv.destroy

    respond_to do |format|
      format.html { redirect_to annivs_url, notice: "L'anniversaire à bien été supprimé." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anniv
      @anniv = Anniv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def anniv_params
      params.require(:anniv).permit(:name, :birthdate, :active)
    end
end
