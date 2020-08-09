class CuentaBancaria
    attr_accessor :banco, :numero_de_cuenta, :saldo
    def initialize(banco,numero_de_cuenta, saldo=0)
        @banco=banco
        @numero_de_cuenta=numero_de_cuenta
        @saldo=saldo
    end    
       
    def transferir (monto,cuenta_ext)
        @saldo=@saldo-monto
        cuenta_ext.saldo=cuenta_ext.saldo+monto
    end
end

class Usuario
    attr_accessor :nombre
    def initialize(nombre,cuentas)
        @nombre=nombre
        @cuentas=cuentas 
    end    

    def saldo_total
        aux=0
        @cuentas.each do |cuenta|
            aux = cuenta.saldo + aux
        end
        aux    
    end    
end

cuenta1=CuentaBancaria.new('Santander',123,5000)
cuenta2=CuentaBancaria.new('BCI',321,5000)
cuenta3=CuentaBancaria.new('Santander',124,7000)
cuenta4=CuentaBancaria.new('BCI',322,8000)

nomusu=Usuario.new('Jorge', [cuenta1,cuenta2,cuenta3])

cuenta1.transferir(5000,cuenta2)

puts cuenta1.saldo
puts cuenta2.saldo
    
puts nomusu.saldo_total


