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
    if !(@sender.valid?)
      puts "Transaction rejected. Please check your account balance."
      @status = "rejected"
    else
      @sender.deposit( @amount * -1 ) 
      @receiver.deposit( @amount )
      @status = "complete"
    end
  end
  
  
  
  
  
end
