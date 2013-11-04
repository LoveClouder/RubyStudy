require "awesome_print"
require "json"

arr = [] 
arr << {:a => 'This',
		:b => 'is',
		:c => 'first',
		:d => 'ruby',
		:e => 'application.' }

arr << {:a => 'Test',
		:b => 'is',
		:c => 'first',
		:d => 'ruby',
		:e => 'test.' }

ap '=======Array Content========'
ap arr
ap '=======Array To Json========'
ap arr.to_json

ap '=======Array First========'
ap arr.first
ap '=======Array Last========'
ap arr.last
ap '=======Array Length========'
ap arr.length
ap '=======Array Size========'
ap arr.size

ap '=======Array Each========'
arr.each{|x| ap x}

arr2 = (1..10).inject([]) { |r, x| r << x }
ap arr2

ap arr2.select { |x| x % 2 == 0 }
ap arr2.select { |x| x % 2 == 0 }.collect { |y| y.to_s }