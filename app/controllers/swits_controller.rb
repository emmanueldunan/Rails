class SwitsController < ApplicationController
  before_action :set_swit, only: [:show, :edit, :update, :destroy]

  # GET /swits
  # GET /swits.json
  def index
    @swits = Swit.order(created_at: :desc)

    respond_to do |format|
      format.html
    end
  end

  # GET /swits/1
  # GET /swits/1.json
  def show
  end

  # GET /swits/new
  def new
    @swit = Swit.new
  end

  # GET /swits/1/edit
  def edit
  end

  # POST /swits
  # POST /swits.json
  def create
    user = User.find(session[:user_id])
    @swit = user.swits.create(swit_params)
    respond_to do |format|
      if @swit.save
        format.html { redirect_to home_index_path }
        format.js
        format.json { rediret_to home_index_path, status: :created, location: @swit }
      else
        format.html { render :new }
        format.json { render json: @swit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /swits/1
  # PATCH/PUT /swits/1.json
  def update
    respond_to do |format|
      if @swit.update(swit_params)
        format.html { render :controller => 'home', :action => 'index', notice: 'Swit was successfully updated.' }
        format.json { render json: @swit.content, status: :ok, location: @swit }
      else
        format.html { render :edit }
        format.json { render json: @swit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /swits/1
  # DELETE /swits/1.json
  def destroy
    @swit.destroy
    respond_to do |format|
      format.html { redirect_to swits_url, notice: 'Swit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_swit
      @swit = Swit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def swit_params
      params.require(:swit).permit(:content)
    end
end
