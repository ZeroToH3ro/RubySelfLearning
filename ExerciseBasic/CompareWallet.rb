class Wallet 
    include Comparable;
    def initialize(amount)
        @amount = amount;
    end
    
    protected attr_reader :amount;

    def <=>(other_wallet)
        @amount <=> other_wallet.amount;
    end

end

bill_wallet = Wallet.new(500);
mark_wallet = Wallet.new(402);

if bill_wallet > mark_wallet
    puts "Bill have more money than mark"
elsif bill_wallet < mark_wallet
    puts "Mark have more money than bill";
else
    puts "They have equal money";
end