@classroom_register = []

def populate_register

  p "please enter total number of people to be added"
  count = gets.chomp.to_i

  while count > 0
    p "please enter first name"
    first_name = gets.chomp.downcase

    p "please enter last name"
    last_name = gets.chomp.downcase

    p "please enter age"
    age = gets.chomp.to_i

    person = {first_name: first_name, last_name: last_name, age: age}
    @classroom_register << person
    count -= 1
  end
end

def find_person
  p "please enter the persons last name"
  search_target = gets.chomp.downcase
  for person in @classroom_register
    p person if person[:last_name] == search_target
  end
end

p "do you wish to add people to the register?"
answer = gets.chomp.downcase

populate_register if answer == "yes"

p "do you wish to search for someone?"
answer = gets.chomp.downcase

find_person if answer == "yes"
