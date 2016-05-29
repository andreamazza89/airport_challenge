#Release Dispatcher is responsible for checking if inwards travel is allowed pending airport capacity and weather

require 'dispatcher'

class ReceiveDispatcher < Dispatcher

  def travel_allowed?(airport)
    (!airport.full?) && super()
  end

end
