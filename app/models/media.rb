class Media < ActiveRecord::Base
	has_attached_file :cover, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
