class CdsController < ApplicationController
  before_action :set_cd, only: [:show, :edit, :update, :destroy]

  # GET /cds
  # GET /cds.json
  def index
    @cds = Cd.all
  end

  # GET /cds/1
  # GET /cds/1.json
  def show
    @cds = Cd.find(params[:id])
  end

  # GET /cds/new
  def new
    @cd = Cd.new
  end

  # GET /cds/1/edit
  def edit
  end

  # POST /cds
  # POST /cds.json
  def create
    @cd = Cd.new(params[:cd].permit(:grupo,:titulo,:descripcion,:enlace,:fecha, :user_id, :puntuacion))   

    respond_to do |format|
      if @cd.save
        format.html { redirect_to @cd, notice: 'El CD fue creado correctamente.' }
        format.json { render :show, status: :created, location: @cd }
      else
        format.html { render :new }
        format.json { render json: @cd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cds/1
  # PATCH/PUT /cds/1.json
  def update
    respond_to do |format|
      if @cd.update(cd_params)
        format.html { redirect_to @cd, notice: 'El Cd fue modificado correctamente.' }
        format.json { render :show, status: :ok, location: @cd }
      else
        format.html { render :edit }
        format.json { render json: @cd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cds/1
  # DELETE /cds/1.json
  def destroy
    @cd.destroy
    respond_to do |format|
      format.html { redirect_to cds_url, notice: 'El Cd fue eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cd
      @cd = Cd.find_by(params[:titulo])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cd_params
      params.require(:cd).permit(:grupo, :titulo, :descripcion, :enlace, :fecha, :user_id, :puntuacion)
    end
end
