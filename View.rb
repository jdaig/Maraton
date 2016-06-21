
require 'colorize'

class View

  def presentacion
    system "clear"
    5.times{puts ""}
    puts "*** Bienvenido al juego de Maratón!!! ***".colorize(:green)
    sleep 2
    puts "Es un juego de memoria y conocimiento."
    sleep 2
    puts "Te daremos una pregunta y deberás dar la respuesta correcta."
    sleep 3
    system "clear"
    5.times{puts ""}
    puts "Listo?"
    sleep 0.9
    system "clear"
    5.times{puts ""}
    puts "Listo? " + "*".colorize(:cyan)
    sleep 0.9
    system "clear"
    5.times{puts ""}
    puts "Listo? " + "**".colorize(:cyan)
    sleep 0.9
    system "clear"
    5.times{puts ""}
    puts "Listo? " + "***".colorize(:cyan)
    sleep 0.9
    system "clear"
    5.times{puts ""}
    puts "Arranca el juego!!!".colorize(:light_red)
    sleep 2
    system "clear"
    puts ""
  end

  def modo
    puts "Escoge el modo de Juego:"
    puts "1 .- Random."
    puts "2 .- Maratón Matematicas"
    puts "3 .- Maraton Cultura"
    puts "4 .- Maraton Historia"
    gets.chomp
  end

  def preguntando(elemento_lista)
        puts elemento_lista.texto 
        respuesta = gets.chomp.downcase
  end
  def resultado(numero)
    system "clear"
    5.times{puts ""}
    puts "Tu numero de aciertos es #{numero}".colorize(:cyan)
    5.times{puts ""}
  end

end
