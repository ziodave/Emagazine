xml.instruct!
xml.mediaInfoCollection(:rtl => @media_info_collection.rtl) do
  @media_infos.each do |media_info|
    xml.mediaInfo(:url => request.protocol + request.host_with_port + media_info.view.url)
  end
end