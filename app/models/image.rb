class Image < ActiveRecord::Base
    belongs_to :gallery
    has_attached_file :photo, :styles => { :large => "300x300>", :small => "100x100>" }
    
    validates_presence_of :title
    validates_attachment_presence :photo
    validates_attachment_content_type :photo, :content_type => 'image/jpeg'
end