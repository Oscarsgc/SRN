class NotesController < ApplicationController

	def create
    	@calification = Calification.find(params[:calification_id])
    	@note = @calification.notes.create(params[:note].permit(:grade))
    	redirect_to calification_path(@calification)
  	end

  	def edit
  		@note = Note.find(params[:id])
  		@calification = Calification.find(params[:calification_id])
	end

	def update
    	@calification = Calification.find(params[:calification_id])
    	@note = Note.find(params[:id])
    	@note.update_attributes(params[:note])
    	redirect_to @calification
  end
end
