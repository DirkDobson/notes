class NotesController < ApplicationController
  def index
    @note = Note.all
  end


  
  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(notes_params)

    if @note.save
      redirect_to pages_path
    else
      render :new
    end
  end

  private

    def notes_params
      params.require(:note).permit(:title, :author, :body)
    end


end
