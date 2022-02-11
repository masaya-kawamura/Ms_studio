class Admin::GalleryController < ApplicationController
  def index
    @gallerys = Gallery.all
  end

  def show
    @gallery = Gallery.find(params[:id])
  end

  def new
    @gallery = Gallery.new
  end

  def create
    Gallery.create(gallery_params)
    redirect_to admin_gallery_index_path
  end

  def edit
    @gallery = Gallery.find(params[:id])
  end

  def update
    gallery = Gallery.find(params[:id])
    gallery.update(gallery_params)
    redirect_to admin_gallery_index_path
  end

  def destroy
    photo = Gallery.find(params[:id])
    photo.destroy
  end

  private
  def gallery_params
    params.require(:gallery).permit(:title, :photo, :caption)
  end

end
