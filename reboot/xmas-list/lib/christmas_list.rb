
def display_list(list)
  # iterate over the gift list to display each item and the purchase status
  # 1. [ ] macbook
  # 2. [ ] iphone
  list.each_with_index do |(item_name, status), index|
    puts "#{index + 1}. [#{status ? 'X' : ' '}] #{item_name}"
  end
end
