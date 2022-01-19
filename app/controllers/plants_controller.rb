class PlantsController < ApplicationController
  before_action :set_plant, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: %i[ new create edit update destroy ]

  def home
  end


  # GET /plants or /plants.json
  def index
    @plants = Plant.all
    @families = Family.all.order("name ASC")
  end

  # GET /plants/1 or /plants/1.json
  def show
  end

  # GET /plants/new
  def new
    @plant = Plant.new
  end

  # GET /plants/1/edit
  def edit
  end

  # POST /plants or /plants.json
  def create
    @plant = Plant.new(plant_params)
    @plant.user_id = current_user.id
    #@plant.genus_id = Genus.find_or_create_by(name: params[:plant][:genus_name]).id
    genus = Genus.find_or_initialize_by(name: params[:plant][:genus_name])

    if genus.new_record?
      family = Family.create(name: params[:plant][:family_name])
      @plant.genus_id = Genus.create(name: params[:plant][:genus_name], symbol: params[:plant][:symbol], family_id: family.id).id
    else
      @plant.genus_id = genus.id
    end
    
    respond_to do |format|
      if @plant.save
        format.html { redirect_to plant_url(@plant), notice: "Plant was successfully created." }
        format.json { render :show, status: :created, location: @plant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @plant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plants/1 or /plants/1.json
  def update
    respond_to do |format|
      if @plant.update(plant_params)
        format.html { redirect_to plant_url(@plant), notice: "Plant was successfully updated." }
        format.json { render :show, status: :ok, location: @plant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @plant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plants/1 or /plants/1.json
  def destroy
    @plant.destroy

    respond_to do |format|
      format.html { redirect_to plants_url, notice: "Plant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant
      @plant = Plant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def plant_params
      params.require(:plant).permit(:genus_name, :specific_epithet, :grex, :infraspecies_unit, :infraspecies_name, :cultivar_group, :cultivar, :hybrid, :water_reqts, :landscape_uses, genus_attributes: [:symbol, :family_name])
    end


end
