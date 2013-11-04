require "awesome_print"

class Closuretest
	def f1
		yield
	end

	def f2(&p)
		p.call
	end

	def f3(p)
		p.call
	end

	def stringtest
		x,y = 5,6
		ap "tringtest: #{x} + #{y} = #{x+y}"
	end

	def proc_return
		Proc.new { return 'Proc.new' }.call
		return 'proc_return method finished.'
	end

	def lambda_return
		lambda { return 'lambda' }.call
		return 'lambda_return method finished.'
	end

	def generic_return(code)
		result = code.call(6)
		integer = 10
		ap "generic_return method finished, result = #{result}, integer = #{integer}."
	end
end

test = Closuretest.new
# test.stringtest
# test.f1 { ap 'f1'}
# test.f2 { ap 'f2'}
# test.f3 ( proc { ap 'f3' } )
# test.f3 ( Proc.new { ap 'f3' } )
# test.f3 ( lambda { ap 'f3' } )
test.proc_return
test.lambda_return
test.generic_return(Proc.new { |x| x = x + 1 })
test.generic_return(lambda { |x| x = x + 2 })