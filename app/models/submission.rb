class Submission < ActiveRecord::Base
  has_attached_file :photo, :styles => {:medium => "500x500>", :thumb => "300x300>"}
end
