class BuildingsController < ApplicationController
	def index
		@buildings = Building.all
    @owners = Owner.all
	end
	def show
    @building = Building.find(params[:id])
	end
	def new
		@building = Building.new
	end
	def create
		@building = Building.new(building_params)

    respond_to do |format|
      if @building.save
        format.html { redirect_to root_path, notice: 'Building was successfully added.' }
      else
        format.html { render action: 'new' }
      end
    end
	end
	def update
		respond_to do |format|
      if @building.update(building_params)
        format.html { redirect_to @building, notice: 'Building was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
	end
	def destroy
    @building = Building.find(params[:id])
		@building.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
    end
	end
	private
    def set_building
      @building = Building.find(params[:id])
    end

    def building_params
      params.require(:building).permit(:street_address,:city,:state,:zip_code,:description, :owner_id)
    end
end