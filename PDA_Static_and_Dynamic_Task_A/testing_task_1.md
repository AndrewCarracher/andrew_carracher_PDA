### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby
### Testing task 2 code:

# Carry out dynamic testing on the code below.
# Correct the errors below that you spotted in task 1.

require_relative('card.rb')
class CardGame


  def checkforAce(card)
    if card.value = 1
      return true
    else
      return false
    end
  end

  # typing error, will not run. Should read def not dif. also must have comma in parameters
  dif highest_card(card1 card2)
  if card1.value > card2.value
    return card.name
    #function will not know what card is as the parameters are card1 and card2. Also the card class does not have a .name function or variable, therefore we can assume by studying the whole function that this should read return card1.
  else
    #this may work in ruby however it is best to specify you are returning card2
    card2
  end
end
end

def self.cards_total(cards)
  #total should specify total = 0
  total
  for card in cards
    total += card.value
    return "You have a total of" + total
  end
end


```
