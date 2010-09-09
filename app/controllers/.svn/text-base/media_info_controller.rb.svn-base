class MediaInfoController < ApplicationController
  def index
    @media_info_collection = MediaInfoCollection.find(params[:media_info_collection_id])
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @media_info_collection.media_infos }
    end
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
