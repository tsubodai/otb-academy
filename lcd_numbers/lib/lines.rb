class Lines

	def number_creator(n, w, h)

		top_line = line_one_builder(n, w, h)
		middle_line = line_two_builder(n, w, h)
		bottom_line = line_three_builder(n, w)

		# if h == 1
			all_lines = "#{top_line}\n#{middle_line}\n#{bottom_line}"
		# else
		# 	top_height_lines = []
		# 	bottom_height_lines = []


		# 	(h-1).times do top_height_lines <<  top_height_builder(n, w) end
		# 	(h-1).times do bottom_height_lines <<  bottom_height_builder(n, w) end

		# 	all_lines = "#{top_line}\n#{top_height_lines.join("\n")}#{middle_line}\n#{top_height_lines.join("\n")}#{bottom_line}"


		# end	
		
		return all_lines
	end

	def line_one_builder(n, w, h)
		result = ""
		
		n.each_char do |m|

			case m
			when "1", "4"
				result += " "
				result += " " * w
				result += " "

			else
				result += " "
				result += "_" * w
				result += " "
			end
		end

		result += "\n"		

		if h > 1
			h-1.times do
				n.each_char do |m|
					 case m
					 when "1", "2", "3", "7"
					 	result += " "
			 		 	result += " " * w
			 		 	result += "|"
			 		 when "4", "8", "9", "0"
			 		 	result += "|"
			 		 	result += " " * w
			 		 	result += "|"
			 		 when "5", "6"
			 		 	result += "|"
			 		 	result += " " * w
			 		 	result += " "
				 	 end				 	 
			 	end			 	
			end
		end

		return result
	end

	def line_two_builder(n, w, h)

		result = ""
		
		n.each_char do |m|

			case m
			when "1", "7"
				result += " "
				result += " " * w
				result += "|"
			when"2", "3"
				result += " "
				result += "_" * w
				result += "|"
			when "5", "6"
				result += "|"
				result += "_" * w
				result += " "
			when "0"
				result += "|"
				result += " " * w
				result += "|"
			else
		 		result += "|"
		 		result += "_" * w
		 		result += "|"
			end
		end

		# result += "\n"

		if h > 1
			h-1.times do
				result += "\n"
				n.each_char do |m|

				 case m
				 when "1", "4", "3", "7", "9", "5"
				 	result += " "
		 		 	result += " " * w
		 		 	result += "|"
		 		 when "8", "6", "0"
		 		 	result += "|"
		 		 	result += " " * w
		 		 	result += "|"
		 		 when "2"
		 		 	result += "|"
		 		 	result += " " * w
		 		 	result += " "
			 	 end
		 		end
			end
		end

		return result
	end

	def line_three_builder(n, w)

		result = ""
		
		n.each_char do |m|

			case m
			when "1", "4", "7"
				result += " "
				result += " " * w
				result += "|"
			when "3", "5", "9"			
				result += " "
				result += "_" * w
				result += "|"
			when "2"
				result += "|"
				result += "_" * w
				result += " "
			else
		 		result += "|"
		 		result += "_" * w
		 		result += "|"
			end
		end		

		return result
	end

	# def height_spacer
	# 	result = "\n"
	# 	return result
	# end

	# def top_height_builder(n, w)

	# 	result = ""

	# 	n.each_char do |m|

	# 		 case m
	# 		 when "1", "2", "3", "7"
	# 		 	result += " "
	#  		 	result += " " * w
	#  		 	result += "|"
	#  		 when "4", "8", "9"
	#  		 	result += "|"
	#  		 	result += " " * w
	#  		 	result += "|"
	#  		 when "5", "6"
	#  		 	result += "|"
	#  		 	result += " " * w
	#  		 	result += " "
	# 	 	 end		 	 
	#  	end
	#  	return result
	# end

	# def bottom_height_builder(n, w)

	# 	result = ""

	# 	n.each_char do |m|

	# 		 case m
	# 		 when "1", "4", "3", "7", "9"
	# 		 	result += " "
	#  		 	result += " " * w
	#  		 	result += "|"
	#  		 when "8", "6"
	#  		 	result += "|"
	#  		 	result += " " * w
	#  		 	result += "|"
	#  		 when "2", "5"
	#  		 	result += "|"
	#  		 	result += " " * w
	#  		 	result += " "
	# 	 	 end		 	 
	#  	end
	#  	return result
	# end
end