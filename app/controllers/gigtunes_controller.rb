class GigtunesController < ApplicationController
  before_action :set_gigtune, only: [:show, :edit, :update, :destroy]

  def create
    @gigtune = GigTune.new(gigtune_params)
    if @gigtune.save
      redirect_to :back
    else
      redirect_to :back
    end

  end

  def destroy
    @gigtune.destroy
    flash[:warning] = "#{@gigtune.tune.tune} removed"
    redirect_to gig_path(@gig)
  end

  private

    def set_gigtune
      @gigtune = GigTune.find(params[:id])
      @gig = @gigtune.gig
    end

    def gigtune_params
      params.require(:gig_tune).permit(:gig_id, :tune_id)
    end

end