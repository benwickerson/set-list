class NotesController < ApplicationController

  def create
    @newnote = Note.new(note_params)
    if @newnote.save
      redirect_to :back
    else
      redirect_to :back
    end

  end


  private

    def note_params
      params.require(:note).permit(:title, :text, :link_id, :link_type)
    end

end