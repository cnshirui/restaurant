class ShoppingsController < ApplicationController
  before_action :set_shopping, only: [:show, :edit, :update, :destroy]

  # GET /shoppings
  # GET /shoppings.json
  def index
    @shoppings = Shopping.all
  end

  # GET /shoppings/1
  # GET /shoppings/1.json
  def show
  end

  # GET /shoppings/new
  def new
    @shopping = Shopping.new
    @meals = Meal.all
    @meals.size.times { @shopping.shopping_meals.build }
  end

  # GET /shoppings/1/edit
  def edit
    @meals = Meal.all
  end

  # POST /shoppings
  # POST /shoppings.json
  def create
    @shopping = Shopping.new(shopping_params)
    
    respond_to do |format|
      if @shopping.save
        format.html { redirect_to @shopping, notice: 'Shopping was successfully created.' }
        format.json { render :show, status: :created, location: @shopping }
      else
        format.html { render :new }
        format.json { render json: @shopping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shoppings/1
  # PATCH/PUT /shoppings/1.json
  def update
    # fix: remove duplicate when edit and save
    @shopping.shopping_meals.delete :all
    
    respond_to do |format|
      if @shopping.update(shopping_params)
        
        format.html { redirect_to @shopping, notice: 'Shopping was successfully updated.' }
        format.json { render :show, status: :ok, location: @shopping }
      else
        format.html { render :edit }
        format.json { render json: @shopping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shoppings/1
  # DELETE /shoppings/1.json
  def destroy
    @shopping.destroy
    respond_to do |format|
      format.html { redirect_to shoppings_url, notice: 'Shopping was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopping
      @shopping = Shopping.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shopping_params
      # params[:shopping]
      params.require(:shopping).permit(:date, shopping_meals_attributes: [:meal_id, :selected] )
    end
end
