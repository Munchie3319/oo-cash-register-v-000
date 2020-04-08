class CashRegister

  attr_accessor :discount, :item, :last_transaction, :total

  def initialize(discount = 0)
    @items =[]
    @discount = discount
    @total = 0
  end
end
    


