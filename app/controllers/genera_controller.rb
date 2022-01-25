class GeneraController < ApplicationController
    before_action :set_genus, only: %i[ show edit update destroy ]
    

    # GET /plants or /plants.json
    def index
        #@genera = Genus.all.order("name ASC")
        @genera = Genus.order("name ASC").page params[:page]
    end

    # GET /plants/1 or /plants/1.json
    def show
        @plants = @genus.plants
    end

    # GET /plants/new
    def new
        @genus = Genus.new
    end

    # GET /plants/1/edit
    def edit
    end

    # POST /plants or /plants.json
    def create
        @genus = Genus.new(genus_params)

        respond_to do |format|
        if @genus.save
            format.html { redirect_to genus_url(@genus), notice: "Genus was successfully created." }
            format.json { render :show, status: :created, location: @genus }
        else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @genus.errors, status: :unprocessable_entity }
        end
        end
    end

    # PATCH/PUT /plants/1 or /plants/1.json
    def update
        respond_to do |format|
            if @genus.update(genus_params)
                format.html { redirect_to genus_url(@genus), notice: "Genus was successfully updated." }
                format.json { render :show, status: :ok, location: @genus }
            else
                format.html { render :edit, status: :unprocessable_entity }
                format.json { render json: @genus.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /plants/1 or /plants/1.json
    def destroy
        @genus.destroy

        respond_to do |format|
        format.html { redirect_to families_url, notice: "Genus was successfully destroyed." }
        format.json { head :no_content }
        end
    end

    private
        # Use callbacks to share common setup or constraints between actions.
        def set_genus
            @genus = Genus.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def genus_params
            params.require(:genus).permit(:name)
        end
end
