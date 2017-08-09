# alumnos.rb
require_relative 'metodos.rb'

puts "Ingrese una opcion:\n 1)Generar archivos por alumno
 2)Mostrar inasistencias totales\n 3)Alumnos aprobados\n 4)Cerrar programa."
op = gets.chomp.to_i

while op != 4
  if op == 1 || op == 2 || op == 3
    if op == 1
      generar_alumno
    elsif op == 2
      inasistencias
    elsif op == 3
      aprobados
    end
  else
    puts 'Ingrese una opcion valida!!'
  end
  puts "\nIngrese una opcion:\n 1)Generar archivos por alumno
2)Mostrar inasistencias totales\n 3)Alumnos aprobados\n 4)Cerrar programa."
  op = gets.chomp.to_i
end
