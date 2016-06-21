require 'csv'

class Card
  attr_accessor :texto, :propiedad

  def initialize(texto,propiedad=false)
    @texto = texto
    @propiedad = propiedad
  end 

end

class List
  attr_accessor :list, :texto, :respuestas

  def initialize(deck)
    @list=[]
    @respuestas=[]
    carga_lista(deck)
  end

  def to_b(string)
    string == "true" ? true : false
  end

  def carga_lista(deck)
    CSV.foreach(deck) do |linea|
     @list << Card.new(linea[0],to_b(linea[1]))
    end
    @list
  end

  def respondiendo(ask)
    respuesta = Card.new(ask)
    @respuestas << respuesta
  end
end
