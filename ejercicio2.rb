module Habilidades
  module Volador
    def volar
      'Estoy volandooooo!'
    end
    def aterrizar
      'Estoy cansado de volar, voy a aterrizar'
    end
  end
  module Nadador
    def nadar
      'Estoy nadando!'
    end
    def sumergir
      'glu glub glub glu'
    end
  end
  module Caminante
    def caminar
      'Puedo caminar!'
    end
  end
end

module Alimentacion
  module Herbivoro
    def comer
      'Puedo comer plantas!'
    end
  end
  module Carnivoro
    def comer
      'Puedo comer carne!'
    end
  end
end


class Animal
  include Alimentacion
  include Habilidades
  attr_reader :nombre

  def initialize(nombre)
    @nombre = nombre 
  end

end

class Ave < Animal
  include Caminante

end

class Mamifero < Animal
  include Nadador
  include Caminante
end

class Insecto < Animal
  include Volador
  include Caminante
end


class Pinguino < Ave
  include Carnivoro
  include Nadador

end

class Paloma < Ave
  include Volador
end

class Pato < Ave
  include Volador
end

class Perro < Mamifero
  include Carnivoro
end

class Gato < Mamifero
  include Carnivoro
end

class Vaca < Mamifero
  include Herbivoro
end

class Mosca < Insecto
  include Carnivoro
end

class Mariposa < Insecto
  include Carnivoro
end

class Abeja < Insecto
  include Herbivoro
end

pinguino1 = Pinguino.new("cadete")
puts pinguino1.nadar
