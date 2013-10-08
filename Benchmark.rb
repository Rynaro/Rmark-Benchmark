class Benchmark

	def timerStart
		Time.now
	end

	def timerStop(t)
		Time.now - t
	end

	def joinArray
		puts "Test: joinArray - Elements: #{1e8.to_i}"
		time = timerStart
		a = Array.new
		for i in 0 .. 1e8
			a.join(' ')
		end
		puts "Time: " + (timerStop(time).round(4)).to_s
	end

	def insertArray
		puts "Test: insertArray - Elements: #{1e8.to_i}"
		time = timerStart
		a = Array.new
		for i in 0 .. 1e8
			a[i] = 'Str'
		end
		puts "Time: " + (timerStop(time).round(4)).to_s
	end

	def sumInt
		puts "Test: sumInt - Sum times: #{1e8.to_i}"
		time = timerStart		
		m = 0
		for i in 0 .. 1e8
			m += i
		end
		puts "Time: " + (timerStop(time).round(4)).to_s
	end

	def printStr
		puts "Test: printStr - print times: #{1e6.to_i}"
		time = timerStart	
		for i in 0 .. 1e6
			print i
		end
		puts "\nTime: " + (timerStop(time).round(4)).to_s		
	end

	def convertInt2Str
		puts "Test: convertInt2Str - convert times #{1e8.to_i}"
		time = timerStart	
		a = 1e6
		for i in 0 .. 1e8
			a.to_s
		end
		puts "\nTime: " + (timerStop(time).round(4)).to_s		
	end

	def simpleWhile
		puts "Test: simpleWhile - print times: #{1e6.to_i}"
		time = timerStart	
		a = 1e8
		while a != 0
			a -= 1
		end
		puts "\nTime: " + (timerStop(time).round(4)).to_s	
	end

	def floatSum
		puts "Test: floatSum - sum times: #{1e8.to_i}"
		time = timerStart
		a = 0.00	
		while a < 1e8
			a += 0.756784
		end
		puts "\nTime: " + (timerStop(time).round(4)).to_s	
	end

	def timesPuts
		puts "Test: timesPuts - puts times: #{1e6.to_i}"
		time = timerStart
		(1e6.to_i).times do |i|
			puts "Puts: " + i.to_s
		end
	end

end
