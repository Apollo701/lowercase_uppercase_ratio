def lower_to_upper
	File.readlines(ARGV.shift).each do |line|
		count_lower_upper(line)
	end
end

def count_lower_upper(line)
	lower_counter = 0.0
	upper_counter = 0.0

	line.chomp.split('').each do |char|
		is_upcase?(char) ? upper_counter +=1 : lower_counter +=1
	end
		lowercase = ((lower_counter/(upper_counter+lower_counter)*100).round(2))
		uppercase = ((upper_counter/(upper_counter+lower_counter)*100).round(2))
		printf("lowercase: %.2f uppercase: %.2f\n", lowercase, uppercase)
end

def is_upcase?(char)
	char == char.upcase ? true : false
end

lower_to_upper