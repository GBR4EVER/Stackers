class Badge < ActiveRecord::Base
  
  belongs_to :user
  
  # This method associates the attribute ":image" from the badge schema with a file attachment.
  has_attached_file :image, :styles => { 
    :medium => "300x300>", 
    :thumb => "100x100>",
    :square => "200x200#"
  }
  
  # Validate the attached image is image/jpg, image/png, etc.
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  
  def s3_credentials
      {:bucket => "stackers21", :access_key_id => "AKIAJTF4DDD5VE4P43QA", :secret_access_key => "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"}
  end
end