class GigtunesController < ApplicationController
  before_action :set_gig_tune, only: [:show, :edit, :update, :destroy]

  def add_gig_tune
  end

  def destroy
    @gigtune.destroy
    flash[:warning] = "#{@gigtune.tune.tune} removed"
    redirect_to gig_path(@gig)
  end

  private

    def set_gig_tune
      @gigtune = GigTune.find(params[:id])
      @gig = @gigtune.gig
    end

end