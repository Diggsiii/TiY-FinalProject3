class ZoomsController < ApplicationController
  before_action :set_zoom, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]
#
#
#  # GET /zooms
#  # GET /zooms.json

def index
   @zooms = Zoom.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 5)
 end

 def show
 end

 def new
   @zoom = current_user.zooms.build
 end

 def edit
 end

 def create
   @zoom = current_user.zooms.build(zoom_params)
   if @zoom.save
     redirect_to @zoom, notice: 'Zoom was successfully created.'
   else
     render action: 'new'
   end
 end

 def update
  if @zoom.update(zoom_params)
     redirect_to @zoom, notice: 'Zoom was successfully updated.'
   else
     render action: 'edit'
   end
 end

 def destroy
   @zoom.destroy
   redirect_to zooms_url
 end

 private
   def set_zoom
     @zoom = Zoom.find(params[:id])
   end

   def zoom_params
     params.require(:zoom).permit(:description, :image, :name)
   end


 def correct_user
     @zoom = current_user.zooms.find_by(id: params[:id])
     redirect_to zooms_path, notice: "Not authorized to edit this Zoom" if @zoom.nil?
 end



end
