class SwitSoursController < ApplicationController
  before_action :set_swit_sour, only: [:show, :edit, :update, :destroy]

  # GET /swit_sours
  # GET /swit_sours.json
  def index
    @swit_sours = SwitSour.all
  end

  # GET /swit_sours/1
  # GET /swit_sours/1.json
  def show
  end

  # GET /swit_sours/new
  def new
    @swit_sour = SwitSour.new
  end

  # GET /swit_sours/1/edit
  def edit
  end

  # POST /swit_sours
  # POST /swit_sours.json
  #
  def create
    @swit_sour = SwitSour.where(:user_id => params[:user_id], :swit_id => params[:swit_id]).first_or_initialize
    @swit_sour.update(:rating => params[:rating])

    respond_to do |format|
      if @swit_sour.save
        format.html { redirect_to @swit_sour, notice: 'Swit sour was successfully created.' }
        format.js
        format.json { render :show, status: :created, location: @swit_sour }
      else
        format.html { render :new }
        format.json { render json: @swit_sour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /swit_sours/1
  # PATCH/PUT /swit_sours/1.json
  def update
    respond_to do |format|
      if @swit_sour.update(swit_sour_params)
        format.html { redirect_to @swit_sour, notice: 'Swit sour was successfully updated.' }
        format.json { render :show, status: :ok, location: @swit_sour }
      else
        format.html { render :edit }
        format.json { render json: @swit_sour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /swit_sours/1
  # DELETE /swit_sours/1.json
  def destroy
    @swit_sour.destroy
    respond_to do |format|
      format.html { redirect_to swit_sours_url, notice: 'Swit sour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_swit_sour
      @swit_sour = SwitSour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def swit_sour_params
      params.require(:swit_sour).permit(:rating)
    end
end
