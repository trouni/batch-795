require_relative 'christmas_list'
require_relative 'scraper'

gift_list = {
  # item: purchased_status # Boolean
  macbook: false,
  iphone: false,
  dress: true,
  job: false
}

# # OPTIONAL: Refactor the app to use this format of gift_list:
# gift_list = [
#   {
#     name: 'MacBook',
#     price: 'a lot',
#     status: false,
#   },
#   {
#     name: 'iPhone',
#     price: 'a lot',
#     status: false,
#   }
# ]

puts
puts ' .                    .           .    '
puts '      .         .                      '
puts '       WELCOME TO XMAS GIFT LIST       '
puts '            .              .       .   '
puts '    .                           .      '
puts '               .   *    .              '
puts '        .         ***       .          '
puts '           .     *****              .  '
puts '    .           *******    .           '
puts '             . *********         .     '
puts '__________________|_|__________________'
puts

action = ''

until action == 'quit'
  puts 'What would you like to do? [list|add|delete|mark|search|quit]'
  print '> '
  action = gets.chomp

  case action
  when 'list'
    display_list(gift_list)
  when 'add'
    # ask the user for the name of the item to add
    puts "What's the name of the item?"
    print '> '
    # store the item name in a variable item_name
    item_name = gets.chomp
    # add a new key to the gift_list hash - hash[new_key] = value
    # new_key is the item_name (string), value is the purchase status (boolean)
    gift_list[item_name] = false
    puts "#{item_name} has been added to your list!"
  when 'delete'
    # show the list of gifts to the user (maybe a reusable method to list the gifts would be nice)
    display_list(gift_list)
    # ask the user what they want to delete (ask for the item number of the item they want to delete)
    puts "What's the number of the item you want to delete?"
    print '> '
    # we have the index_to_delete, but we need the item's name (=key)
    index_to_delete = gets.chomp.to_i - 1
    # gift_list.keys will return an array with all of the item names, we use this to get the item name to delete (key_to_delete)
    item_to_delete = gift_list.keys[index_to_delete]
    # remove the item from the gift_list: hash.delete(key)
    gift_list.delete(item_to_delete)
    puts "#{item_to_delete} has been removed from your list!"
  when 'mark'
    display_list(gift_list)
    puts "What's the number of the item you want to mark as purchased?"
    print '> '
    index_to_mark = gets.chomp.to_i - 1
    item_to_delete = gift_list.keys[index_to_mark]
    # we update the item's value: hash[key] = new_value
    gift_list[item_to_delete] = true
    puts "#{item_to_delete} has been marked as purchased!"
  when 'search'
    # Ask the user for a keyword to search on Etsy
    puts 'What would you like to search for on Etsy?'
    print '> '
    # Store the keyword in a variable `keyword`
    keyword = gets.chomp
    search_results = search_etsy(keyword) # scrape Etsy => returns an array of five strings
    # Display the results by iterating over search_results (include number)
    search_results.each_with_index { |item_name, index| puts "#{index + 1}. #{item_name}" }
    # Ask the user to pick an item number and store it in index_to_add
    puts 'Which item would you like to add to the list?'
    print '> '
    index_to_add = gets.chomp.to_i - 1
    # To get the item_name, we can use: search_results[index_to_add]
    item_name = search_results[index_to_add]
    # Add the item to the gift_list: hash[key_name] = value
    gift_list[item_name] = false
  when 'quit'
    puts 'Goodbye!'
  else
    puts 'Invalid action, please select between [list|add|delete|mark|search|quit]'
  end
end
