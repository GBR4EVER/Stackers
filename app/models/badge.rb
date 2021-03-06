class Badge < ActiveRecord::Base
  
  belongs_to :user
  
  # This method associates the attribute ":image" from the badge schema with a file attachment.
  has_attached_file :image, :styles => { 
    :thumb => "100x100>",
    :square => "200x200#",
    :medium => "300x300>" 
  }
  
  # Validate the attached image is image/jpg, image/png, etc.
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end