require_relative 'string'


def get_user_number()
  loop{
    print "Введите максимальное значение диапазона N(минимальное значение 3): "
    n = gets.chomp.to_i
    if n < 3
      puts "Слишком маленький диапазон, введите большее число"
    else
      return n
    end
  }
end


n = get_user_number()
hidden_num = rand(1..n)
print"Я загадал число\n"

trying = n / 10
if trying < 10
  trying = 10
end

puts "Кол-во попыток #{trying}"

while true do
  puts 'Введите число:'
  user_input = gets.chomp
  num = user_input.to_i

  if user_input.is_integer? == false || num <= 0
    puts 'Введенно число неправильного формата'
    redo
  end

  if num == hidden_num
    puts "Вы угадали загаданное число #{hidden_num}! Победа!"
    break
  end

  trying -= 1
  if trying.zero?
    puts "Проигрыш! Загаданное число #{hidden_num}!"
    break
  end

  if num < hidden_num
    puts "Введенное число #{num} меньше загаданного."
  else
    puts "Введенное число #{num} больше загаданного."
  end

  puts "Осталось попыток #{trying}"

end
