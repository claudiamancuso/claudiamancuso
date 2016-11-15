#instacart: implement a shopping cart, where ultimately you can
#Add items with prices and amount in your cart.
#Then checkout and the terminal will print you the detailed receipt.
#Start with a very simple program without handling prices nor available stock,
#then improve it.

# Remember to user CONSTANTS for list of items and shopping cart

#V1

# Create a list of items ARRAY
# Display the list of items and prompt the user for which he wants
# Display an error message if user input is not in the list
# Save user's choice in a shopping cart
# Let the user check out or keep shopping
# Once they check out, display everything in their shopping basket


# V2
# Add prices to the list of items HASH
# Add the option to add bigger quantities a time
# Add a calculate total price functionality to the checkout
# Display the total price at checkout

BOOKSTORE = {
  "Harry Potter" => 20,
  "Lord of the Rings" => 15,
  "To Kill a Mockingbird" => 10,
  "Animal Farm" => 12
}

SHOPPING_CART = []

def add_to_cart(book)
  if BOOKSTORE[book]
    SHOPPING_CART << book
    puts "#{book} was successfully added to your cart."
  else
    puts "this book #{book} does not exist"
  end
end

def display_items
  i = 1
  BOOKSTORE.each do |book, price|
    puts "#{i} #{book} : #{price}"
    i += 1
  end
end

def calculate_total
  sum = 0
  SHOPPING_CART.each do |book|
    sum += BOOKSTORE[book]
  end
  return sum
end

keep_going = "yes"

until keep_going == "no"
  display_items
  puts "Which item would you like to purchase?"
  book_names = BOOKSTORE.keys
  puts "Pick a book 1-4"
  user_input = gets.chomp.to_i - 1
  book_title = book_names[user_input]
  add_to_cart(book_title)
  puts "Would you like to keep going?"
  keep_going = gets.chomp
end

puts "Thank You! Total Cost is #{calculate_total} $"

# DISPLAY SHOPPING CART





