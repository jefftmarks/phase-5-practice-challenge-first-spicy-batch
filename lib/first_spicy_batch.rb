# The is_spicy_batch method is already defined for you and will be called when running tests.
# @param {Integer} batch
# @return {boolean} whether the batch is spicy
# def is_spicy_batch(batch):

require 'pry'

@batch = [true, true, true, true, true, true, true]

def is_spicy_batch(n)
	@batch[n - 1]
end

def first_spicy_batch(n)
	return n if n === 1

  middle = (n.to_f / 2).ceil

	if is_spicy_batch(middle)
		if !is_spicy_batch(middle - 1)
			return middle
		else
			return first_spicy_batch(middle)
		end
	else
		if is_spicy_batch(middle + 1)
			return middle + 1
		else
			return first_spicy_batch(n + middle)
		end
	end
end


puts first_spicy_batch(7)
