class MediaInfoCollection < ActiveRecord::Base
	has_attached_file :source, :styles => {
	    :large  => ["768x1024>", :png],
	    :medium => ["350x470>", :png],
	    :thumb  => ["100x100>", :png] }

  has_many :media_infos, :dependent => :destroy
  
end
