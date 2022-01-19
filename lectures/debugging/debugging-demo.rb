# gem install pry-byebug # only the first time
# require 'pry-byebug'
# binding.pry # pause the execution of your code
# next, continue, exit

require 'pry-byebug'

def full_name(first_name, last_name)
  binding.pry
  first_name = first_name.capitalize
  last_name = last_name.capitalize

  "#{first_name} #{last_name}"
  binding.pry
end

p full_name('taylor', 'mravic')