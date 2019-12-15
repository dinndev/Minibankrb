class Dreambank  
    #INITIALIZE METHOD
    def initialize (name, balance)
    @name = name
    @balance = balance
    $enter = ""
    $choose = ""
end
    #HOME
    def home
        puts "enter your pin"
        $enter = gets.chomp.to_i
        if $enter == pin
        puts "Welcome"
        puts "What do you want to do?"
        puts "(1): Check balance?"
        puts "(2): Withdraw"
        puts "(3): logout"
      case @choose = gets.chomp.to_i
      when 1
           $account.check_balance
            home
      when 2 
           $account.withdraw
      when 3
           logout
      else 
        puts "invalid choice"
        backhome
      end
    end
end

     #WITHDRAW 
      def withdraw
    puts "enter your pin"
    $enter = gets.chomp.to_i
        if $enter == pin
            puts "How much do you want to withdraw"
            puts "(1): $500"
            puts "(2): $1000"
            puts "(3): $5000" 
            puts "(4):  Or any amount you desired"
         case $choose = gets.chomp.to_i           
         when 1
            @balance -= 500
             check_balance
            home
         when 2 
            @balance -= 1000
            check_balance
            home
         when 3
            @balance -= 5000
            check_balance
            home
         when 4
            puts "Enter your desired amount"
            $enter = gets.chomp.to_i
          @balance -= $enter 
           successfull
           home
         else 
            home
end
else backhome
end
end
         

    #CHECKING BALANCE
    def check_balance
    puts  "YAY! #{@name} your balance is #{@balance}"
    end
    #PUTS ERROR BACK HOME
    def backhome
        puts "Enter your Pin CORRECTLY"
        $enter = gets.chomp.to_i
     if $enter == pin
       puts "Welcome"
       puts "What do you want to do?"
       puts "(1): Check balance?"
       puts "(2): Withdraw"
       puts "(3): logout"
     case $choose = gets.chomp.to_i
     when 1
          $account.check_balance
     when 2 
          $account.withdraw
    when 2 
         $account.logout
     else 
        puts "Please pick on choices" 

end
end
end 
#SUCCESFULL_TRANSACTION
def successfull
  puts "Successfull transaction your new balance is #{@balance}"
end
#LOGOUT
    def logout
     puts "You logged out"
 end
    #THE PIN
    def pin
    $pin = 12345
end
end
# CREATE THE OBJECT
$account = Dreambank.new('Foo',50000)

puts "Welcome to DREAMBANK"
puts  "What do you want to do?"
puts "(1): Home"
puts "(2): Logout"
   case $choose = gets.chomp.to_i
   when 1 
     $account.home
   when 2
    $account.logout
  end
