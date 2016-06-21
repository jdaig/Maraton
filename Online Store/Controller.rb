require_relative 'Model'
require_relative 'View'

class Manager

  def initialize
    @vista = View.new
    @vista.presentation
    opcion = @vista.menu_action
      case opcion
        when '1' 
          info = @vista.login_reg
        when '2' 
          info = @vista.login_reg
          User.new(info.join(','))
        else exit
      end
  end

end

prueba = Manager.new


