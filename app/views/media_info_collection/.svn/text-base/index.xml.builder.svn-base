xml.instruct!
xml.mediaInfoCollection do
  @media_info_collections.each do |media_info_collection|
    xml.mediaInfo(
      :title => media_info_collection.title,
      :url => request.protocol + request.host_with_port + media_info_collection.source.url(:medium),
      :moreInfo => "#{media_info_collection_url(media_info_collection.id)}.xml",
      :rtl => media_info_collection.rtl
    )
  end
end