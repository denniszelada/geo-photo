class PhotosController < ApplicationController
    respond_to :json

  def index
    @photos = Photo.all
    respond_with({:photos => @photos}.as_json)
  end

  def show
    @photo = Photo.find(params[:id])
    respond_with(@photo)
  end

  def create
    @photo = Photo.create(params[:photo])
    respond_with(@photo)
  end
end
