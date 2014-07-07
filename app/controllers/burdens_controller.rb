class BurdensController < ApplicationController
  before_action :set_burden, only: [:show, :edit, :update, :destroy]

  # GET /burdens
  # GET /burdens.json
  def index
    @burdens = Burden.all
  end

  # GET /burdens/1
  # GET /burdens/1.json
  def show
  end

  # GET /burdens/new
  def new
    @burden = Burden.new
  end

  # GET /burdens/1/edit
  def edit
  end

  # POST /burdens
  # POST /burdens.json
  def create
    @burden = Burden.new(burden_params)

    respond_to do |format|
      if @burden.save
        format.html { redirect_to @burden, notice: 'Burden was successfully created.' }
        format.json { render :show, status: :created, location: @burden }
      else
        format.html { render :new }
        format.json { render json: @burden.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /burdens/1
  # PATCH/PUT /burdens/1.json
  def update
    respond_to do |format|
      if @burden.update(burden_params)
        format.html { redirect_to @burden, notice: 'Burden was successfully updated.' }
        format.json { render :show, status: :ok, location: @burden }
      else
        format.html { render :edit }
        format.json { render json: @burden.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /burdens/1
  # DELETE /burdens/1.json
  def destroy
    @burden.destroy
    respond_to do |format|
      format.html { redirect_to burdens_url, notice: 'Burden was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_burden
      @burden = Burden.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def burden_params
      params.require(:burden).permit(:material_id, :dish_id, :quantity)
    end
end
