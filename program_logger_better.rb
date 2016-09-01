	$nesting_depth = 0
def log(block_description, &some_proc)
	space = ''
	$nesting_depth.times do
		space << ' '
	end
	puts space + 'Beginning "' + block_description + '"...'
	$nesting_depth += 2
	response = some_proc.call
	puts space + '..."' + block_description + ' finished, returning:'
  puts "#{space}#{response}"
end

log 'outer block' do
	
		log 'some little block' do
			5
		end

		log 'yet another block' do
			"I like Thai food!"
		end

	false
end

