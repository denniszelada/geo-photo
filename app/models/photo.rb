class Photo < ActiveRecord::Base
  attr_accessible :lat, :lng, :image
  has_attached_file :image,
                  :styles => { :thumbnail => "100x100#" },
                  :storage => :s3,
                  :s3_credentials => S3_CREDENTIALS
end
