class GigsController < ApplicationController
  before_action :set_gig, only: [:show, :edit, :update, :destroy]

  def index
    @gigs = Gig.all
  end

  def show
    @gig_tunes = @gig.gig_tunes.order('position ASC')
  end

  def sort
    params[:gig_tune].each_with_index do |id, index|
      tune = GigTune.find_by(id: id)
      tune.update(position: index+1)
    end
    render nothing: true
  end

  def new
    @gig = Gig.new
  end

  def edit
  end

  def create
    @gig = Gig.new(gig_params)

    respond_to do |format|
      if @gig.save
        format.html { redirect_to @gig, notice: 'Gig was successfully created.' }
        format.json { render :show, status: :created, location: @gig }
      else
        format.html { render :new }
        format.json { render json: @gig.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @gig.update(gig_params)
        format.html { redirect_to @gig, notice: 'Gig was successfully updated.' }
        format.json { render :show, status: :ok, location: @gig }
      else
        format.html { render :edit }
        format.json { render json: @gig.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gigs/1
  # DELETE /gigs/1.json
  def destroy
    @gig.destroy
    respond_to do |format|
      format.html { redirect_to gigs_url, notice: 'Gig was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gig
      @gig = Gig.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gig_params
      params.require(:gig).permit(:gig, :gig_date)
    end

end
