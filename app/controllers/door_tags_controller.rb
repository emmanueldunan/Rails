class DoorTagsController < ApplicationController
  before_action :set_door_tag, only: [:show, :edit, :update, :destroy]

  # GET /door_tags
  # GET /door_tags.json
  def index
    @door_tags = DoorTag.all
  end

  # GET /door_tags/1
  # GET /door_tags/1.json
  def show
  end

  # GET /door_tags/new
  def new
    @door_tag = DoorTag.new
  end

  # GET /door_tags/1/edit
  def edit
  end

  # POST /door_tags
  # POST /door_tags.json
  def create
    @door_tag = DoorTag.new(door_tag_params)

    respond_to do |format|
      if @door_tag.save
        format.html { redirect_to @door_tag, notice: 'Door tag was successfully created.' }
        format.json { render :show, status: :created, location: @door_tag }
      else
        format.html { render :new }
        format.json { render json: @door_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /door_tags/1
  # PATCH/PUT /door_tags/1.json
  def update
    respond_to do |format|
      if @door_tag.update(door_tag_params)
        format.html { redirect_to @door_tag, notice: 'Door tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @door_tag }
      else
        format.html { render :edit }
        format.json { render json: @door_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /door_tags/1
  # DELETE /door_tags/1.json
  def destroy
    @door_tag.destroy
    respond_to do |format|
      format.html { redirect_to door_tags_url, notice: 'Door tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_door_tag
      @door_tag = DoorTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def door_tag_params
      params.require(:door_tag).permit(:tag)
    end
end
