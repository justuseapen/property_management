class OwnersController < ApplicationController
	def new
		@owner = Owner.new
	end
	def create
		@owner = Owner.new(owner_params)
    respond_to do |format|
      if @owner.save
        format.html { redirect_to @owner, notice: 'Owner was successfully added.' }
      else
        format.html { render action: 'new' }
      end
    end
	end
	def show
    @owner = Owner.find(params[:id])
	end
	private
    def set_owner
      @owner = Owner.find(params[:id])
    end

    def owner_params
      params.require(:owner).permit(:f_name,:l_name,:email,:company)
    end
end