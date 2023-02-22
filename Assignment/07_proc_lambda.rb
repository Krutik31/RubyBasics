def proc_lambda_demo

    puts "before lambda"

	lambdavar = lambda {
		puts "inside lambda"
		return            #It will return only from lambda proc, not from an entire method
	}
	lambdavar.call

	puts "after lambda"

	procvar = proc {
		puts "inside proc"
		return            #It will return from proc as well as from an entire method. that's why "after proc" statement will not be printed in final output.
	}
	procvar.call

	puts "after proc"
end

proc_lambda_demo


# Output:
    # before lambda
    # inside lambda
    # after lambda
    # inside proc
	