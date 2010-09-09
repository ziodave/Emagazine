class MediaInfoCollectionController < ApplicationController  
  def index
    @media_info_collections = MediaInfoCollection.order("created_at DESC")
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml # { render :xml => @media_info_collections }
    end

  end

  def show
    @media_info_collection = MediaInfoCollection.find( params[:id] )
    @media_infos = @media_info_collection.media_infos.order("page_number")
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml # show.xml.builder
    end
  end

  def new
    @media_info_collection = MediaInfoCollection.new
  end

  def create
    @media_info_collection = MediaInfoCollection.create( params[:media_info_collection] )
  end

  def edit
  end

  def update
  end

  def destroy
    @media_info_collection = MediaInfoCollection.find( params[:id] )
    @media_info_collection.destroy
    
    respond_to do |format|
      format.html { redirect_to media_info_collections_url }
      format.xml  { head :ok }
    end
  end

end
