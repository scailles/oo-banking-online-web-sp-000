class Transfer
  
  attr_accessor :transfer, :sender, :receiver, :status, :amount
  
  
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
  
  
  def valid?
    if sender.valid? && receiver.valid?
      true
    else
      false
    end
  end
  
  
  def execute_transaction
    if sender.valid? && receiver.valid? && sender.balance > amount
      @status = "complete"
      @sender.balance -= @amount
      @receiver.balance += @amount
    elsif @status == "complete"
      puts "Transaction was already excecuted."
    else "could not be completed"
    end
  end
  
  
  
  
  
end
