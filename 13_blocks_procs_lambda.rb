# Blocks
# blocks can be used by two ways.
# first method:
["Krutik", "Patel"].each do |k|
	puts k
end
# Second method:
["Krutik", "Patel"].each {|k| puts k}

# to call blocks inside from a method, we use 'yield'
def func
	puts "from method"
	yield
	puts "again from method"
	yield
end

func {puts "from block"}



# Procs
# procs are used, when wee want to call the same block statements multiple times in program
# it's a ruby objects that can be stored in a program and reused many times in program.
sqr = Proc.new{|x| x**2}
[0,1,2].map(&sqr)  # to pass a proc into a method, we use & sign
putproc = Proc.new{puts "from proc"}
putproc.call	# call method is used to call a proc



# Lambda
# lambda is an instance of the class Proc in ruby.
lamvar = lambda {|s| puts "Hello "+s}
lamvar.call("Simform")
puts lamvar.class



# Difference between Procs & Lambda
def procdemo
	puts "before proc"
	procvar = proc {
		puts "inside proc"
		return
	}
	procvar.call
	"after proc"
end
puts procdemo
# it will dump us out of proc as well as method



def lambdademo
	puts "before lambda"
	lambdavar = lambda {
		puts "inside lambda"
		return
	}
	lambdavar.call
	"after lambda"
end
puts lambdademo
# it will dump us out of proc but not out of method