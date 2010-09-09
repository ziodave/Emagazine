require "converter"
include Converter, Converter::Adapters, Converter::Strategies

class MediaInfoCollectionObserver < ActiveRecord::Observer

  def after_save(media_info_collection)
    Rails.logger.debug "media #{media_info_collection.id} saved"
    
    # don't do post-processing if the media_infos are already there
    return unless media_info_collection.media_infos.length == 0
    
    # get a converter and run it
    convert = ConvertBuilder.create(
      SimpleSourceAdapter.new(media_info_collection.source.path),
      MediaInfoDestinationAdapter.new(media_info_collection, "#{File.dirname(media_info_collection.source.path)}/page.jpg"),
      SimpleConvertStrategy.new)
    convert.run
  end

end
