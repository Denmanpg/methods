my_inventory = {
	"cheese" => 25,
	"pepperoni" => 16
}

def show_inventory(inventory)
	puts inventory	
end

def add_pizza(inventory, pizza)
	if inventory.has_key?(pizza)
		puts "this pizza already exists!"
	else 
		inventory[pizza] = 0
	end
end

def remove_pizza(inventory, pizza)
	if inventory.has_key?(pizza)
		puts "this pizza already exists!"
	else 
		puts "this pizza doesn't exist!"
	end
end

def buy_pizza(inventory, pizza, stock)
	if inventory.has_key?(pizza)
		inventory[pizza] += stock
	else
		puts "We don't make that pizza here!"
	end
end

def sell_pizza(inventory, pizza, stock)
	if inventory.has_key?(pizza)
		if stock > inventory[pizza]
			puts "We don't have enough pizza in stock, sorry!"
		else
		inventory[pizza] -= stock
	end
	else 
		puts "We don't make that pizza here!"
	end
end

while true
	puts "Welcome to our TTS Pizza Shop!"
	puts "Here is your menue:"
	puts "1. Check the Inventory."
	puts "2. Add a new pizza to our inventory."
	puts "3. Remove a pizza from our inventory."
	puts "4. Buy more of a certain pizza from our inventory."
	puts "5. Sell more of a certain pizza from our inventory."
	puts "6. Go home for the day."

		choice = gets.chomp
			case choice
			when "1" 
				show_inventory(my_inventory)
			when "2"
				puts "What kind of pizza would you like to add?"
				new_pizza = gets.chomp
				add_pizza(my_inventory,new_pizza)
			when "3"
				puts "What kind of pizza would you like to remove?"
				existing_pizza = gets.chomp
				remove_pizza(my_inventory,existing_pizza)
			when "4"
				puts "What pizza would you like to buy more of?"
				more_pizza = gets.chomp
				puts "How many would you like to buy?"
				amount = gets.chomp.to_i
				buy_pizza(my_inventory,more_pizza,amount)
			when "5"
				puts "What pizza would you like to sell more of?"
				sell_pizza = gets.chomp.to_i
				puts "How many would you like to sell?"
				amount = gets.chomp.to_i
				sell_pizza(my_inventory,sell_pizza,amount)
			when "6"
				break

			end
		end

show_inventory(my_inventory)
# add_pizza(my_inventory, "meatlovers")
# show_inventory(my_inventory)
# add_pizza(my_inventory, "cheese")
# show_inventory(my_inventory)
# remove_pizza(my_inventory, "meatlovers")
# show_inventory(my_inventory)
# buy_pizza(my_inventory, "cheese", 10)
# show_inventory(my_inventory)
# buy_pizza(my_inventory, "supreme", 2)
# show_inventory(my_inventory)
sell_pizza(my_inventory, "cheese", 5)
sell_pizza(my_inventory, "pepperoni", 2)
show_inventory(my_inventory)
