class Atm
    def initialize(type, money, {})
        @type = type
        @money = 0
        @transaction_history = []
    end

    def set_withdrawl(withdrawl)
        @withdrawl = withdrawl
    end

    def get_withdrawl
        @money = @money - @withdrawl
    end

    def set_deposite(deposite)
        @deposite = deposite
    end

    def get_deposite
        @money = @money + @deposite
    end

    #show balance
    attr_reader :money

    def set_transaction_history({})
        @transaction_history = {@withdrawl => @money, @deposite => @money}
    end
    def get_transaction_history
        @transaction_history
    end

end

atm = Atm.new("Checking", 0)

atm.set_deposite(25)
atm.get_deposite

atm.set_withdrawl(18)
atm.get_withdrawl

atm.set_deposite(20)
atm.get_deposite

p atm.money

p get_transaction_history