require "converter"
include Converter, Converter::Adapters, Converter::Strategies

class MediaInfoDestinationAdapter < DestinationAdapter
  
  def initialize(media_info_collection, file_out)
    Rails.logger.debug "MediaInfoDestinationAdapter.initialize [#{media_info_collection}][#{file_out}]"
    
    @media_info_collection = media_info_collection
    @file_out = file_out
  end
  
  def complete(file_array)
    Rails.logger.debug "MediaInfoDestinationAdapter.complete [#{file_array}]"
    
    # create the MediaInfo bound to the MediaInfoCollection
    file_array.each do |file|
      media_info = MediaInfo.new
      media_info.page_number = file[/-[0-9]+\./][/[0-9]+/]
      media_info.view = File.new(file)
      media_info.media_info_collection = @media_info_collection
      media_info.save
    end
    
    Rails.logger.debug "MediaInfoDestinationAdapter.complete: done"
    
  end
  
end