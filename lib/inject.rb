class Array

	def my_inject(x=nil)
		if x == nil
			x = self.first
			self[1..-1].each {|item| x = yield(x,item)}
			x
		else
			self.each {|item| x = yield(x,item) }
			x
		end
	end

end