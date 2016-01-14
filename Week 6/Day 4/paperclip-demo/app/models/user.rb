class User < ActiveRecord::Base
    has_attached_file :avatar, :styles => { :medium => "800x800>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png" 
    validates_attachment_content_type :avatar,
    :content_type => /\Aimage\/.*\Z/

    has_secure_password
    validates_presence_of :password
end
