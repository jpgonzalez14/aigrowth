class MicrocontroladorsController < ApplicationController
  before_action :set_microcontrolador, only: [:show, :edit, :update, :destroy]

  # GET /microcontroladors
  # GET /microcontroladors.json
  def index
    @microcontroladors = Microcontrolador.all
  end

  # GET /microcontroladors/1
  # GET /microcontroladors/1.json
  def show
  end

  # GET /microcontroladors/new
  def new
    @microcontrolador = Microcontrolador.new
  end

  # GET /microcontroladors/1/edit
  def edit
  end

  # POST /microcontroladors
  # POST /microcontroladors.json
  def create
    @microcontrolador = Microcontrolador.new(microcontrolador_params)

    respond_to do |format|
      if @microcontrolador.save
        format.html { redirect_to @microcontrolador, notice: 'Microcontrolador was successfully created.' }
        format.json { render :show, status: :created, location: @microcontrolador }
      else
        format.html { render :new }
        format.json { render json: @microcontrolador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /microcontroladors/1
  # PATCH/PUT /microcontroladors/1.json
  def update
    respond_to do |format|
      if @microcontrolador.update(microcontrolador_params)
        format.html { redirect_to @microcontrolador, notice: 'Microcontrolador was successfully updated.' }
        format.json { render :show, status: :ok, location: @microcontrolador }
      else
        format.html { render :edit }
        format.json { render json: @microcontrolador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microcontroladors/1
  # DELETE /microcontroladors/1.json
  def destroy
    @microcontrolador.destroy
    respond_to do |format|
      format.html { redirect_to microcontroladors_url, notice: 'Microcontrolador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_microcontrolador
      @microcontrolador = Microcontrolador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def microcontrolador_params
      params.require(:microcontrolador).permit(:nombre)
    end
end
