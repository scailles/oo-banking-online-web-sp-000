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
    
    if sender.balance > amount
      status = "rejected"
      puts "could not be completed."
    
    elsif @status == "completed"
      puts "Transaciton was already completed."
      
    else 
      sender.balance -= amount
      receiver.balance += amount
      @status == "complete"
    end
  end
  
  
  
  
  
end
