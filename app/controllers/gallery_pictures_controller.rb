class GalleryPicturesController < ApplicationController
  before_action :set_gallery_picture, only: [:show, :edit, :update, :destroy]

  # GET /gallery_pictures
  # GET /gallery_pictures.json
  def index
    @gallery_pictures = GalleryPicture.all
  end

  # GET /gallery_pictures/1
  # GET /gallery_pictures/1.json
  def show
  end

  # GET /gallery_pictures/new
  def new
    @gallery_picture = GalleryPicture.new
  end

  # GET /gallery_pictures/1/edit
  def edit
  end

  # POST /gallery_pictures
  # POST /gallery_pictures.json
  def create
    @gallery_picture = GalleryPicture.new(gallery_picture_params)

    respond_to do |format|
      if @gallery_picture.save
        format.html { redirect_to @gallery_picture.gallery, notice: 'Gallery picture was successfully created.' }
        format.json { render :show, status: :created, location: @gallery_picture }
      else
        format.html { render :new }
        format.json { render json: @gallery_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gallery_pictures/1
  # PATCH/PUT /gallery_pictures/1.json
  def update
    respond_to do |format|
      if @gallery_picture.update(gallery_picture_params)
        format.html { redirect_to @gallery_picture.gallery, notice: 'Gallery picture was successfully updated.' }
        format.json { render :show, status: :ok, location: @gallery_picture }
      else
        format.html { render :edit }
        format.json { render json: @gallery_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gallery_pictures/1
  # DELETE /gallery_pictures/1.json
  def destroy
    @gallery_picture.destroy
    respond_to do |format|
      format.html { redirect_to gallery_pictures_url, notice: 'Gallery picture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gallery_picture
      @gallery_picture = GalleryPicture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gallery_picture_params
      params.require(:gallery_picture).permit(:name, :description, :picture, :gallery_id)
    end
end
