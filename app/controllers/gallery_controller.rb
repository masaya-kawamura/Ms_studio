class GalleryController < ApplicationController
  def index
  end

  def gallery_params
    params.require(:gallery).permit(:title, :photo, :caption)
  end
end
