class HomeController < ApplicationController



    def index
        puts "This is working ******************"
    end

    def facts
        arr = ["wobbles eat broccoli", "Wobbles are real"]
        @fact = arr[0]
    end
end
