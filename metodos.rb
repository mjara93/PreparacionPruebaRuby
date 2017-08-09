# metodos.rb
def read
  file = File.open('alumnos.csv', 'r')
  content = file.readlines
  file.close
  lines = content.map { |e| e.delete(",\n") }
  lines
end

# generar archivo por alumno
def generar_alumno
  line = read
  promedio = 0
  line.each do |x|
    arr = x.split(' ')
    promedio = (arr[1].to_f + arr[2].to_f + arr[3].to_f + arr[4].to_f +
    arr[5].to_f) / 5
    file = File.open("#{arr[0]}.csv", 'w')
    file.puts "#{arr[0]} tiene promedio #{promedio}"
    file.close
  end
  puts 'Documentos generados!'
end

# contar inasistencias totales
def inasistencias
  line = read
  line.each do |x|
    arr = x.split(' ')
    contador = 0
    arr.each do |y|
      contador += 1 if y == 'A'
    end
    puts "#{arr[0]} tiene #{contador} inasistencias." if contador != 0
  end
end

# Alumnos aprobados
def aprobados
  line = read
  promedio = 0
  line.each do |x|
    arr = x.split(' ')
    promedio = (arr[1].to_f + arr[2].to_f + arr[3].to_f + arr[4].to_f +
    arr[5].to_f) / 5
    puts "#{arr[0]} aprueba con nota #{promedio}" if promedio >= 5.0
  end
end
