class CashRegister

  attr_accessor :total, :discount, :quantity, :price

  def initialize(discount =0)
    @total = 0
    @discount = discount
    @price = price
    @quantity = quantity
    @items = []
    @transactions = []
  end

  def apply_discount
    if @discount == 0
      "No discount"
    else
      self.total -= (0.01 * @discount *@total).to_i
      "after discount, your total comes to $#{self.total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = @total - @transactions.pop
  end
end