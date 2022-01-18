# 0 - Greet the user
# 1 - Give the user options (list, add, delete, quit)
# 2 - Get user input about what they want to do (store it in a variable `action`)
# 3a - Check what the user wants to do using a case statement
# 3b - Just add a placeholder inside the action
# 4 - Loop the required lines of code using a while/until statement

gift_list = {
  # item: purchased_status # Boolean
  macbook: false,
  iphone: false,
  dress: false,
  job: false
}

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
  puts 'What would you like to do? [list|add|delete|quit]'
  action = gets.chomp

  case action
  when 'list'
    # display the gift list
    # iterate over the gift list to display each item and the purchase status
    # 1. [ ] macbook
    # 2. [ ] iphone
    # gift_list.each_with_index do |(item_name, status), index|
  when 'add'
    # ask the user for the name of the item to add
    # store the item name in a variable item_name
    # add a new key to the gift_list hash - hash[new_key] = value
    # new_key is the item_name (string), value is the purchase status (boolean)
  when 'delete'
    # show the list of gifts to the user (maybe a reusable method to list the gifts would be nice)
    # ask the user what they want to delete (ask for the item number of the item they want to delete)
    # we have the index_to_delete, but we need the item's name (=key)
    # gift_list.keys will return an array with all of the item names, we use this to get the item name to delete (key_to_delete)
    # remove the item from the gift_list: hash.delete(key)
  when 'quit'
    puts 'Goodbye!'
  else
    puts 'Invalid action, please select between [list|add|delete|quit]'
  end
end
