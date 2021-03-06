class OwnersController < ApplicationController
  def index
    @owners = Owner.all
  end
	def new
		@owner = Owner.new
	end
	def create
		@owner = Owner.new(owner_params)
    respond_to do |format|
      if @owner.save
        format.html { redirect_to root_path, notice: 'Owner was successfully added.' }
      else
        format.html { render action: 'new' }
      end
    end
	end
	def show
    @owner = Owner.find(params[:id])
	end
  def destroy
    @owner = Owner.find(params[:id])
    @owner.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
    end
  end
	private
    def set_owner
      @owner = Owner.find(params[:id])
    end

    def owner_params
      params.require(:owner).permit(:f_name,:l_name,:email,:company)
    end
end