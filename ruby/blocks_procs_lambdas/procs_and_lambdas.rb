# procs vs lambdas:

# Proc objects created with lambda have stricter argument checking than those created with Proc.new.
hello_proc = Proc.new {|first_name, last_name| puts "hello #{first_name} #{last_name}"}

hello_lambda = lambda {|first_name, last_name| puts "hello #{first_name} #{last_name}"}

def tell name, something
  first, last = name.split(' ')
  something.call first
end

tell "Ed Shadi", hello_proc

# Proc return will return a method while lambda return will return it's block of code but conitnues the execution of the method.

def hello name
  first, last = name.split(' ')
  hello_proc = Proc.new {|first_name, last_name| return puts "hello #{first_name} #{last_name}"}
  hello_proc.call first, last
  puts "you're awesome"
end

hello "Ed Shadi"
