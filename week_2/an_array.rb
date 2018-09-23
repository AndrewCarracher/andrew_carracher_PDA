def check_number(number)
  if number < 0 || number > 20
    p "please enter a number between 1 and 20"
    number = gets.chomp.to_i
    check_number(number)
  else
    return number
  end
end

def lottery_time

  lottery_numbers = []
  count = 0
  number_of_matches = 0
  number = 1

  p "welcome to the lottery"

  while count < 6
    p "please enter a number between 1 and 20 for number #{number}"
    users_lottery_number = gets.chomp.to_i

    checked_number = check_number(users_lottery_number)

    lottery_numbers << checked_number
    count += 1
    number += 1
  end

  p "are you ready to proceed?"
  proceed = gets.chomp.downcase

  if proceed == "yes"
    draw_numbers = []
    draw_counter = 0

    while draw_counter < 6
      drawn = rand(20)
      draw_numbers << drawn

      for number in lottery_numbers
        if number == drawn
          number_of_matches += 1
        end
      end
      draw_counter += 1
    end

    string_lottery_numbers = lottery_numbers.to_s
    string_drawn_numbers = draw_numbers.to_s

    p "the numbers you picked were #{string_lottery_numbers}"
    p "the numbers drawn in this lottery were #{string_drawn_numbers}"
    p "you have #{number_of_matches} matches"

    if number_of_matches == 6
      p "Congratulations You've Won!!"
    else
      p "Sorry, the numbers you picked didn't win this time, try again"
    end

  elsif proceed == "no"
    lottery_time()
  else
    p "please type in 'yes' or 'no'"
  end
end

lottery_time()
