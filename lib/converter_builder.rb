require "converter"

class ConverterBuilder

  def self.create()
    Rails.logger.debug "ConverterBuilder.create"
    Converter.new nil, nil, nil
  end

end
