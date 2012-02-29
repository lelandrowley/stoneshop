class Submission < ActiveRecord::Base
  has_attached_file :photo, 
    :styles => {:medium => "500x500>", :thumb => "300x300>"},
    :storage => :s3,
    :bucket => 'typecurio',
    :s3_credentials => {
      :access_key_id => ENV['S3_KEY'],
      :secret_access_key => ENV['S3_SECRET'] }
end
