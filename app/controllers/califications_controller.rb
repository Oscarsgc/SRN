class CalificationsController < ApplicationController
	def new
  	end
 
  	def create
  		@calification = Calification.new(params[:calification])
		  if	@calification.save
  		  redirect_to @calification
  		else
  			render 'new'
  		end
  	end

    def user_calif
      @califications = Calification.all
    end

    def calificate 
      @nota = Nota.new
    end

    def edit
      @calification = Calification.find(params[:id])
    end

  	def show
  		@calification = Calification.find(params[:id])
  	end

	def index
  		@califications = Calification.all
	end

	def update
  		@calification = Calification.find(params[:id])
 		if @calification.update_attributes(params[:calification])
    		redirect_to @calification
  		else
    		render 'edit'
  		end
	end

	def destroy
  		@calification = Calification.find(params[:id])
  		@calification.destroy
		redirect_to califications_path
  end
end
