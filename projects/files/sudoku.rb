class Sudoku

	attr_reader :board

	def initialize(string)
		@board_str = string
		@board = str_to_int(str_to_arr(string))
		@given_numbers = find_given_numbers
	end

	def find_given_numbers
		output = []
		board.each_index do |i|
			output << i if board[i] > 0
		end
		output	
	end

	def str_to_arr(board)
		board.split("")
	end

	def str_to_int(array)
		array.map { |element| element.to_i }
	end

	def oned_to_twod(array)
		array.each_slice(9).to_a
	end

	def display_board(two_d_array)
		puts
		two_d_array.each do |row|
			row.each do |num|
				print "#{num} "
			end
			puts
		end
	end

	def columns_to_rows(two_d_array)
		output = Array.new(9) { Array.new(9) }
		two_d_array.each_index do |y|
			two_d_array[y].each_index do |x|
				output[x][y] = two_d_array[y][x]
			end
		end
		output
	end

	def boxes_to_rows(two_d_array)
		output = Array.new(9) { Array.new(9) }

		output[0][0] = two_d_array[0][0]
		output[0][1] = two_d_array[0][1]
		output[0][2] = two_d_array[0][2]
		output[0][3] = two_d_array[1][0]
		output[0][4] = two_d_array[1][1] #BOX 1
		output[0][5] = two_d_array[1][2]
		output[0][6] = two_d_array[2][0]
		output[0][7] = two_d_array[2][1]
		output[0][8] = two_d_array[2][2]

		output[1][0] = two_d_array[0][3]
		output[1][1] = two_d_array[0][4]
		output[1][2] = two_d_array[0][5]
		output[1][3] = two_d_array[1][3] #BOX 2
		output[1][4] = two_d_array[1][4]
		output[1][5] = two_d_array[1][5]
		output[1][6] = two_d_array[2][3]
		output[1][7] = two_d_array[2][4]
		output[1][8] = two_d_array[2][5]

		output[2][0] = two_d_array[0][6]
		output[2][1] = two_d_array[0][7]
		output[2][2] = two_d_array[0][8]
		output[2][3] = two_d_array[1][6] #BOX 3
		output[2][4] = two_d_array[1][7]
		output[2][5] = two_d_array[1][8]
		output[2][6] = two_d_array[2][6]
		output[2][7] = two_d_array[2][7]
		output[2][8] = two_d_array[2][8]

		output[3][0] = two_d_array[3][0]
		output[3][1] = two_d_array[3][1]
		output[3][2] = two_d_array[3][2]
		output[3][3] = two_d_array[4][0]
		output[3][4] = two_d_array[4][1] #BOX 4
		output[3][5] = two_d_array[4][2]
		output[3][6] = two_d_array[5][0]
		output[3][7] = two_d_array[5][1]
		output[3][8] = two_d_array[5][2]

		output[4][0] = two_d_array[3][3]
		output[4][1] = two_d_array[3][4]
		output[4][2] = two_d_array[3][5]
		output[4][3] = two_d_array[4][3] #BOX 5
		output[4][4] = two_d_array[4][4]
		output[4][5] = two_d_array[4][5]
		output[4][6] = two_d_array[5][3]
		output[4][7] = two_d_array[5][4]
		output[4][8] = two_d_array[5][5]

		output[5][0] = two_d_array[3][6]
		output[5][1] = two_d_array[3][7]
		output[5][2] = two_d_array[3][8]
		output[5][3] = two_d_array[4][6] #BOX 6
		output[5][4] = two_d_array[4][7]
		output[5][5] = two_d_array[4][8]
		output[5][6] = two_d_array[5][6]
		output[5][7] = two_d_array[5][7]
		output[5][8] = two_d_array[5][8]

		output[6][0] = two_d_array[6][0]
		output[6][1] = two_d_array[6][1]
		output[6][2] = two_d_array[6][2]
		output[6][3] = two_d_array[7][0] #BOX 7
		output[6][4] = two_d_array[7][1]
		output[6][5] = two_d_array[7][2]
		output[6][6] = two_d_array[8][0]
		output[6][7] = two_d_array[8][1]
		output[6][8] = two_d_array[8][2]

		output[7][0] = two_d_array[6][3]
		output[7][1] = two_d_array[6][4]
		output[7][2] = two_d_array[6][5]
		output[7][3] = two_d_array[7][3] #BOX 8
		output[7][4] = two_d_array[7][4]
		output[7][5] = two_d_array[7][5]
		output[7][6] = two_d_array[8][3]
		output[7][7] = two_d_array[8][4]
		output[7][8] = two_d_array[8][5]

		output[8][0] = two_d_array[6][6]
		output[8][1] = two_d_array[6][7]
		output[8][2] = two_d_array[6][8]
		output[8][3] = two_d_array[7][6] #BOX 9
		output[8][4] = two_d_array[7][7]
		output[8][5] = two_d_array[7][8]
		output[8][6] = two_d_array[8][6]
		output[8][7] = two_d_array[8][7]
		output[8][8] = two_d_array[8][8]

		output
	end

	def uniq_row?(row)
		new_row = row.dup
		new_row.delete(0)
		new_row == new_row.uniq
	end

	def valid_row?(row)
		row.reduce(:+) == 45 && uniq_row?(row)
	end

	def uniq_board?(two_d_array)
		two_d_array.each do |row|
			return false unless uniq_row?(row)
		end
		columns_to_rows(two_d_array).each do |row|
			return false unless uniq_row?(row)
		end
		boxes_to_rows(two_d_array).each do |row|
			return false unless uniq_row?(row)
		end
		true
	end

	def valid_board?(two_d_array)
		two_d_array.each do |row|
			return false unless valid_row?(row)
		end
		columns_to_rows(two_d_array).each do |row|
			return false unless valid_row?(row)
		end
		boxes_to_rows(two_d_array).each do |row|
			return false unless valid_row?(row)
		end
		true
	end

	def recursive_solver(board = @board, current_index = 0)
		working_board = board.dup

		sudoku_number = 1
		forward_jump = 1

		while @given_numbers.include?(current_index)
			current_index += 1
		end

		while sudoku_number < 10

			while @given_numbers.include?(current_index + forward_jump)
				forward_jump += 1
			end

			system('clear')
			display_board(oned_to_twod(working_board))

			working_board[current_index] = sudoku_number
			if uniq_board?(oned_to_twod(working_board))
				if valid_board?(oned_to_twod(working_board))
					system('clear')
					display_board(oned_to_twod(working_board))
					puts
					puts "   *~*SOLVED*~*"
					return true 
				end
				return true if recursive_solver(working_board, current_index + forward_jump)
			end
			sudoku_number += 1
		end
		false
	end

end

