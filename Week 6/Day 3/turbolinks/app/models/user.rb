class User < ActiveRecord::Base
    has_secure_password
    validates_presence_of :password
end

class Reader < User

end