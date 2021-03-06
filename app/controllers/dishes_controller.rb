class DishesController < ApplicationController
  before_action :set_dish, only: [:show, :edit, :update, :destroy]

  # GET /dishes
  # GET /dishes.json
  def index
    @dishes = Dish.all.sort_by { |dish|  HanziToPinyin.hanzi_2_py(dish.name) }
  end

  # GET /dishes/1
  # GET /dishes/1.json
  def show
  end

  # GET /dishes/new
  def new
    @dish = Dish.new
    @materials = Material.all.sort_by { |material| HanziToPinyin.hanzi_2_py(material.name) }
    5.times { @dish.burdens.build }
  end

  # GET /dishes/1/edit
  def edit
    @materials = Material.all.sort_by { |material| HanziToPinyin.hanzi_2_py(material.name) }
    5.times { @dish.burdens.build }
  end

  # POST /dishes
  # POST /dishes.json
  def create
    @dish = Dish.new(dish_params)

    respond_to do |format|
      if @dish.save
        format.html { redirect_to @dish, notice: 'Dish was successfully created.' }
        format.json { render :show, status: :created, location: @dish }
      else
        format.html { render :new }
        format.json { render json: @dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dishes/1
  # PATCH/PUT /dishes/1.json
  def update
    respond_to do |format|
      # Unpermitted parameters: page
      if @dish.update(dish_params)
        @dish.burdens.each do |burden|
          @dish.burdens.delete(burden) if burden.quantity == nil or burden.quantity == 0
        end  
        format.html { redirect_to @dish, notice: 'Dish was successfully updated.' }
        format.json { render :show, status: :ok, location: @dish }
      else
        format.html { render :edit }
        format.json { render json: @dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dishes/1
  # DELETE /dishes/1.json
  def destroy
    @dish.destroy
    respond_to do |format|
      format.html { redirect_to dishes_url, notice: 'Dish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dish
      @dish = Dish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dish_params
      params.require(:dish).permit(:name, :book_id, :page, burdens_attributes: [:material_id, :quantity])
    end
end
