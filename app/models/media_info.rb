class MediaInfo < ActiveRecord::Base
	has_attached_file :view, :styles => { :thumb  => ["100x100>", :png] }
      # :large  => ["768x1024>", :png],
      # :medium => ["350x470>", :png],

  belongs_to :media_info_collection

end
