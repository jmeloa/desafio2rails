class Baraja
    attr_accessor :cartas
    def initialize()
        @cartas=[]
        pintas=['Corazon','Diamante','Espada','Trebol']
        pintas.each do |pinta|
            for i in (1..13)
                @cartas.push(Carta.new(i,pinta))
            end
        end    
    end

    def barajar
        @cartas=@cartas.shuffle
    end
    
    def sacar
        @cartas.pop
    end

    def repartir_mano
        mano=[]
        5.times {|i| mano.push(@cartas.reverse[i])}
        5.times {@cartas.pop}
        mano

    end

end

require_relative 'carta'


c1=Baraja.new
puts c1.cartas.inspect

#puts ""
#puts c1.barajar.inspect

#puts ""
#puts c1.sacar

#puts ""
#puts c1.cartas

#puts ""
#puts c1.repartir_mano

#puts ""
#puts c1.cartas