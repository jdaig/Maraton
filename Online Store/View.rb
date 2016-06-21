require 'colorize'

class View

  def presentation
    puts "*".colorize(:green) * 25 " Awesome ".colorize(:green) + "*".colorize(:green) * 25
    puts "*** Welcome to the Online Store ***"
    puts "-" * 60
    puts "-" * 60
  end

  def menu_action
    puts "Select option" + "number".colorize(:green)
    puts "-"* 60
    puts "1".colorize(:green) + " .- Login."
    puts "2".colorize(:green) + " .- Register."
    puts "3".colorize(:green) + " .- Exit."
    puts "-" * 60
    puts ""
    action = gets.chomp
  end

  def login_reg
    info =[]
    puts "Such:".colorize(:green)
    puts "1".colorize(:green) + " .- Administrator"
    puts "2".colorize(:green) + " .- Sales Man"
    puts "3".colorize(:green) + " .- Client"
    info << gets.chomp
    puts "Email:".colorize(:green)
    puts ""
    info << gets.chomp
    puts "Pasword:".colorize(:green)
    puts ""
    info << gets.chomp
    info
  end

  def modo_adm
    puts "Select option" + "number".colorize(:green)
    puts "-" * 60
    puts "1".colorize(:green) + " .- Logout."
    puts "2".colorize(:green) + " .- Product index."
    puts "3".colorize(:green) + " .- Create product."
    puts "4".colorize(:green) + " .- User index."
    puts "-" * 60
    puts ""
    action = gets.chomp
  end

  def modo_sales_man
    puts "Select option" + "number".colorize(:green)
    puts "-" * 60
    puts "1".colorize(:green) + " .- Logout."
    puts "2".colorize(:green) + " .- Product index."
    puts "3".colorize(:green) + " .- Sale product."
    puts "4".colorize(:green) + " .- Score."
    puts "-" * 60
    puts ""
    action = gets.chomp
  end

  def modo_client
    puts "Select option" + "number".colorize(:green)
    puts "-" * 60
    puts "1".colorize(:green) + " .- Logout."
    puts "2".colorize(:green) + " .- Product index."
    puts "3".colorize(:green) + " .- Buy product."
    puts "-" * 60
    puts ""
    action = gets.chomp
  end

end