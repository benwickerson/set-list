class RehersalsController < ApplicationController
  before_action :set_rehersal, only: [:show, :edit, :update, :destroy]

  # GET /rehersals
  # GET /rehersals.json
  def index
    @rehersals = Rehersal.all
  end

  # GET /rehersals/1
  # GET /rehersals/1.json
  def show
  end

  # GET /rehersals/new
  def new
    @rehersal = Rehersal.new
  end

  # GET /rehersals/1/edit
  def edit
  end

  # POST /rehersals
  # POST /rehersals.json
  def create
    @rehersal = Rehersal.new(rehersal_params)

    respond_to do |format|
      if @rehersal.save
        format.html { redirect_to @rehersal, notice: 'Rehersal was successfully created.' }
        format.json { render :show, status: :created, location: @rehersal }
      else
        format.html { render :new }
        format.json { render json: @rehersal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rehersals/1
  # PATCH/PUT /rehersals/1.json
  def update
    respond_to do |format|
      if @rehersal.update(rehersal_params)
        format.html { redirect_to @rehersal, notice: 'Rehersal was successfully updated.' }
        format.json { render :show, status: :ok, location: @rehersal }
      else
        format.html { render :edit }
        format.json { render json: @rehersal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rehersals/1
  # DELETE /rehersals/1.json
  def destroy
    @rehersal.destroy
    respond_to do |format|
      format.html { redirect_to rehersals_url, notice: 'Rehersal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rehersal
      @rehersal = Rehersal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rehersal_params
      params.require(:rehersal).permit(:rehersal)
    end
end
