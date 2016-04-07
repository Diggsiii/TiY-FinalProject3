class ZoomsController < ApplicationController
  before_action :set_zoom, only: [:show, :edit, :update, :destroy]

  # GET /zooms
  # GET /zooms.json
  def index
    @zooms = Zoom.all
  end

  # GET /zooms/1
  # GET /zooms/1.json
  def show
  end

  # GET /zooms/new
  def new
    @zoom = Zoom.new
  end

  # GET /zooms/1/edit
  def edit
  end

  # POST /zooms
  # POST /zooms.json
  def create
    @zoom = Zoom.new(zoom_params)

    respond_to do |format|
      if @zoom.save
        format.html { redirect_to @zoom, notice: 'Zoom was successfully created.' }
        format.json { render :show, status: :created, location: @zoom }
      else
        format.html { render :new }
        format.json { render json: @zoom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zooms/1
  # PATCH/PUT /zooms/1.json
  def update
    respond_to do |format|
      if @zoom.update(zoom_params)
        format.html { redirect_to @zoom, notice: 'Zoom was successfully updated.' }
        format.json { render :show, status: :ok, location: @zoom }
      else
        format.html { render :edit }
        format.json { render json: @zoom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zooms/1
  # DELETE /zooms/1.json
  def destroy
    @zoom.destroy
    respond_to do |format|
      format.html { redirect_to zooms_url, notice: 'Zoom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zoom
      @zoom = Zoom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zoom_params
      params.require(:zoom).permit(:description)
    end
end
