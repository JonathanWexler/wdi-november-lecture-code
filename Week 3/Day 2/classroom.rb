class Account

    attr_accessor :balance, :owner, :type, :number

    def initialize(owner, balance)
        @balance = balance
        @owner = owner
        @type
        @number = rand
    end

    # def students=(number)
    #     @students = number
    # end

    # def students
    #     @students
    # end

    # def topic=(topic)
    #     @topic=topic
    # end

    # def topic
    #     @topic
    # end

end