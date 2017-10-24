require 'date'

puts "--- Início ---"
t1 = Time.now
dtInicio = Date.parse ARGV[0]
prazo = ARGV[1].to_i

if prazo > 0
    puts "Data Inicial: #{dtInicio} - Prazo: #{prazo} dias"

    prazo -=1

    dtFim = dtInicio + (prazo)

    if prazo > 5
        dtFim += (prazo/5)*2
    end

    if dtFim.wday == 0 || dtFim.wday == 6 
        dtFim += 2   
    end

    puts "Data Final #{dtFim} - #{dtFim.strftime("%A")}"
else
    puts "Prazo inválido. Deve ser maior que 0."
end

puts "--- Pronto em #{((Time.now-t1)*1000).round(2)}ms ---"    