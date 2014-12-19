class Array

	def my_inject(arg=nil)
		if arg == nil
			n = self.first
			self[1..-1].each {|number| n = yield(n,number)}
			n
		else
			self.each {|number| arg = yield(arg,number) }
			arg
		end
	end

end