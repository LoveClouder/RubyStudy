require "awesome_print"

class Filter
	def initialize
		@constraints = []
	end

	def constraint(&block)
		@constraints << block
	end

	def to_proc
		lambda { |e| @constraints.all? { |fn| fn.call(e) } }
	end
end

filter = Filter.new
filter.constraint { |x| x > 10 }

ap (7..22).select(&filter)