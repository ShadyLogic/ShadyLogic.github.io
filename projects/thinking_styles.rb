
score = {concrete_sequential: 0, abstract_sequential: 0, abstract_random: 0, concrete_random: 0}

list_of_answers = []

list_of_words = [
	['realistic', 'organised', 'getting to the point', 'practical', 'precise', 'orderly', 'perfectionist', 'hardworking', 'planner', 'memorise', 'wants direction', 'cautious', 'practicing', 'completing work', 'doing'], #concrete sequential
	['analytical', 'critical', 'debating', 'academic', 'systematic', 'sensible', 'logical', 'intelectual', 'reader', 'think-through', 'judger', 'reasoning', 'examining', 'gaining ideas', 'thinking'], #abstract sequential
	['imaginitive', 'adaptable', 'creating', 'personal', 'flexible', 'sharing', 'cooperative', 'sensitive', 'people-person', 'associate', 'spontaneous', 'communicating', 'caring', 'interpreting', 'feeling'], #abstract random
	['investigative', 'inquisitive', 'relating', 'adventurous', 'inventive', 'independent', 'competitive', 'risk-taking', 'problem-solver', 'originate', 'changer', 'discovering', 'challenging', 'seeing possibilities', 'experimenting'] #concrete random
				]

length = list_of_words[0].length

length.times do |x| #run once for length of array in list_of_words

	system 'clear'

	shuffled_list = list_of_words.shuffle #shuffle list_of_words into shuffled_list

	choice_1 = shuffled_list[0][x]
	choice_2 = shuffled_list[1][x]
	choice_3 = shuffled_list[2][x]
	choice_4 = shuffled_list[3][x]

	puts ''
	puts ''
	puts "Please choose the two (2) words that best describe you"
	puts "         and input the corresponding numbers."
	puts ''
	puts "1. #{choice_1}"
	puts "2. #{choice_2}"
	puts "3. #{choice_3}"
	puts "4. #{choice_4}"
	puts '' 
	print "ANSWER: "

	answer = gets.chomp.downcase.delete ", " #formats answer, -spaces -commas

	while answer.length != 2 #makes sure answer is a 2-digit number
		puts "You must enter exactly two (2) numbers"
		puts "ANSWER: "
		answer = gets.chomp.downcase.delete ", "
	end

	while answer =~ /[^1234]/
		puts "Invalid characters, please try again."
		puts "ANSWER: "
		answer = gets.chomp.downcase.delete ", "
	end

	answer = answer.split(//) #answer becomes an array with 2 elements.

	answer[0] = shuffled_list[(answer[0].to_i) -1][x] #replace numbers with words
	answer[1] = shuffled_list[(answer[1].to_i) -1][x]

	list_of_answers.concat(answer) #add words to list_of_answers

end

list_of_answers.each do |word| #run through list of answers

	if list_of_words[0].include?(word) #add up number of answers from each style
		score[:concrete_sequential] += 1
	elsif list_of_words[1].include?(word)
		score[:abstract_sequential] += 1
	elsif list_of_words[2].include?(word)
		score[:abstract_random] += 1
	elsif list_of_words[3].include?(word)
		score[:concrete_random] += 1
	end

end

system 'clear'

puts '' #score calculation gives percentage
puts ''
puts "Your scores:"
puts ''
puts "Concrete Sequential: #{(score[:concrete_sequential] / 0.3).round(1)}%"
puts "Abstract Sequential: #{(score[:abstract_sequential] / 0.3).round(1)}%"
puts "Abstract Random: #{(score[:abstract_random] / 0.3).round(1)}%"
puts "Concrete Random: #{(score[:concrete_random] / 0.3).round(1)}%"
puts ''
puts ''
puts "PRESS ENTER TO CONTINUE"
gets
puts ''
puts "Concrete sequential thinkers are based in reality, according to SuperCamp 
co-founder and president Bobbi DePorter. They process information in an ordered, 
sequential, linear way. To them, \"reality consists of what they can detect 
through their physical sense of sight, touch, sound, taste and smell. They 
notice and recall details easily and remember facts specific information, 
formulas and rules with ease. \'Hands on\' is a good way for these people 
to learn.\" If you\'re concrete sequential—a CS—build on your organisational 
strengths. Provide yourself with details. Break your projects down into specific 
steps. Set up quiet work environments."
puts ''
puts "PRESS ENTER TO CONTINUE"
gets
puts ''
puts "Abstract sequential thinkers love the world of theory and abstract thought. 
They like to think in concepts and analyse information. They make great philosophers 
and research scientists. DePorter again: \"It\'s easy for them to zoom in on what\'s 
important, such as key points and significant details. Their thinking processes are 
logical, rational and intellectual. A favourite activity for abstract sequentials is 
reading, and when a project needs to be researched they are very thorough at it. 
Generally they prefer to work alone rather than in groups.\" If you\'re an AS, give 
yourself exercises in logic. Feed your intellect. Steer yourself toward highly 
structured situations."
puts ''
puts "PRESS ENTER TO CONTINUE"
gets
puts ''
puts "Abstract random thinkers organise information through reflection, and thrive 
in unstructured, people-oriented environments. Says DePorter: \"The \'real\' world 
for abstract random learners is the world of feelings and emotions. The AR\'s mind 
absorbs ideas, information and impressions and organises them through reflection. 
They remember best if information is personalised. They feel constricted when they\'re 
subjected to a very structured environment.\" If you\'re an AR, use your natural 
ability to work with others. Recognise how strongly emotions influence your 
concentration. Build on your strength of learning by association. Look at the big 
picture first. Be careful to allow enough time to finish the job. Remind yourself 
to do things through plenty of visual clues, such as coloured stickers pasted up 
where you\'ll see them."
puts ''
puts "PRESS ENTER TO CONTINUE"
gets
puts ''
puts "Concrete random thinkers are experimenters. says DePorter: \"Like concrete 
sequentials, they\'re based in reality, but are willing to take more of a trial-
and-error approach. Because of this, they often make the intuitive leaps necessary 
or true creative thought. They have a strong need to find alternatives and do 
things in their own way.\" If you\'re a CR, use your divergent thinking ability. 
Believe that it\'s good to see things from more than one viewpoint. Put yourself 
in a position to solve problems. But give yourself deadlines. Accept your need for 
change. Try and work with people who value divergent thinking."
puts ''