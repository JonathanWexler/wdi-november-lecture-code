class User < ActiveRecord::Base

    validates :email, :presence => {message: "Your email is whack!."}, if: :email_is_good?



    def email_is_good?
        true
    end
end
