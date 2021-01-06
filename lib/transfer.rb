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
    
    if @sender.balance > @amount && @status = "pending"
      @status = "complete"
      @sender.balance -= @amount
      @receiver.balance += @amount
    elsif @status = "complete"
      @status = "rejected"
      puts "Already completed."
      
    elsif @sender.balance < @amount
      @status = "rejected"
        puts "Transaction rejected. Please check your account balance."
  
    else "could not be completed"
    end
  end
  
  
  
  
  
end
