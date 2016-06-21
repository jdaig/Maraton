require_relative 'Model'
require_relative 'View'

class Manager

  def initialize
    @vista = View.new
    @vista.presentacion
    opcion = @vista.modo
      case opcion
        when '1' then @lista = List.new("Preguntas.csv")
        when '2' then @lista = List.new("Mate.csv")
        when '3' then @lista = List.new("Cultura.csv")
        when '4' then @lista = List.new("Historia.csv")
        else exit
      end
  end

  def match(respuestas)
    correctas = @lista.list.select{|task| task.texto !=nil && task.propiedad == false}
    n = 0
    for i in 0...correctas.length
      n+=1 if correctas[i].texto.downcase == respuestas[i].texto.downcase
    end
    @vista.resultado(n)
  end

  def preguntando
    for i in 0...@lista.list.length
      if @lista.list[i].propiedad
        @lista.respondiendo(@vista.preguntando(@lista.list[i]))
      end
    end
    match(@lista.respuestas)
  end

end

prueba = Manager.new
prueba.preguntando