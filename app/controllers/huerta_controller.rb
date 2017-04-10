class HuertaController < ApplicationController
  before_action :set_huertum, only: [:show, :edit, :update, :destroy]

  # GET /huerta
  # GET /huerta.json
  def index
    @huerta = Huertum.all
  end

  # GET /huerta/1
  # GET /huerta/1.json
  def show
  end

  # GET /huerta/new
  def new
    @huertum = Huertum.new
  end

  # GET /huerta/1/edit
  def edit
  end

  # POST /huerta
  # POST /huerta.json
  def create
    @huertum = Huertum.new(huertum_params)

    respond_to do |format|
      if @huertum.save
        format.html { redirect_to @huertum, notice: 'Huertum was successfully created.' }
        format.json { render :show, status: :created, location: @huertum }
      else
        format.html { render :new }
        format.json { render json: @huertum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /huerta/1
  # PATCH/PUT /huerta/1.json
  def update
    respond_to do |format|
      if @huertum.update(huertum_params)
        format.html { redirect_to @huertum, notice: 'Huertum was successfully updated.' }
        format.json { render :show, status: :ok, location: @huertum }
      else
        format.html { render :edit }
        format.json { render json: @huertum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /huerta/1
  # DELETE /huerta/1.json
  def destroy
    @huertum.destroy
    respond_to do |format|
      format.html { redirect_to huerta_url, notice: 'Huertum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_huertum
      @huertum = Huertum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def huertum_params
      params.require(:huertum).permit(:name, :type, :user_id)
    end
end
