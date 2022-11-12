# The is_spicy_batch method is already defined for you and will be called when running tests.
# @param {Integer} batch
# @return {boolean} whether the batch is spicy
# def is_spicy_batch(batch):

def first_spicy_batch(n)
  middle = (n / 2).ceil

	result = nil

	# If middle of batch is spicy
	if is_spicy_batch(middle)
		# If previous batch is not spicy, you've found first spicy batch
		if !is_spicy_batch(middle - 1)
			return middle
		# If previous batch is spicy, look to earlier batch
		else
			result = first_spicy_batch(middle)
		end
	# If middle of batch is not spicy
	else
		# If next batch is spicy, you've found first spicy batch
		if is_spicy_batch(middle + 1)
			return middle
		else
			result = first_spicy_batch(n + middle)
		end


	end

	return result

end

puts first_spicy_batch(5);
